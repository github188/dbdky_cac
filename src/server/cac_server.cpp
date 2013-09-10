#include "cac_server.h"

#include <utils/Logging.h>

#include <boost/bind.hpp>
#include <boost/algorithm/string.hpp>

#include <string>
#include <iostream>
#include <sstream>
#include "tinyxml.h"

#include "ws/stub/soapCAGWebServicePortSoapProxy.h"
#include "ws/stub/CAGWebServicePortSoap.nsmap"

namespace dbdky
{
namespace detail
{
    string upLoadCACData(const string& msg)
    {
        CAGWebServicePortSoapProxy service;
      
        _ns1__upLoadCACData param;
        _ns1__upLoadCACDataResponse response;
 
        param.sXml = new std::string(msg);

        if (service.upLoadCACData(&param, &response) == SOAP_OK)
        {
            LOG_INFO << "SOAP_OK: upLoadCACData response: " << *(response.upLoadCACDataResult);
            return *(response.upLoadCACDataResult);
        }
        else
        {
            LOG_ERROR << "Response Not OK";
            service.soap_stream_fault(std::cerr);
        }

        service.destroy();
    }

    bool validateResponse(const string& res)
    {
        TiXmlDocument doc;
        doc.Parse(res.c_str());

        TiXmlNode* node = NULL;
        TiXmlElement* element = NULL;
        TiXmlNode* inside = NULL;
        TiXmlElement* inElement = NULL;

        node = doc.FirstChild("response");
        if ((NULL == node) || !(element = node->ToElement()))
        {
            return false;
        }

        inside = element->FirstChild("result");
        if ((NULL == inside) || !(inElement = inside->ToElement()))
        {
            return false;
        }

        string itemName(inElement->Attribute("code"));
        if ("0" == itemName)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
}

namespace dbdky
{
namespace cac_server
{
cac_server::cac_server(dbdky::port::EventLoop* loop,
                const dbdky::port::InetAddress& listenAddr,
                const string& nameArg)
    : loop_(loop),
      server_(loop, listenAddr, "cac_server"),
      name_(nameArg)
{
    server_.setConnectionCallback(
        boost::bind(&cac_server::onConnection, this, _1));
    server_.setMessageCallback(
        boost::bind(&cac_server::onMessage, this, _1, _2, _3));
}

void cac_server::start()
{
    server_.start();
}

void cac_server::onConnection(const dbdky::port::TcpConnectionPtr& conn)
{
    LOG_INFO << "cac_server - " << conn->peerAddress().toIpPort() << " -> "
        << conn->localAddress().toIpPort() << " is "
        << (conn->connected() ? "UP" : "DOWN");
}

void cac_server::onMessage(const dbdky::port::TcpConnectionPtr& conn,
                dbdky::port::Buffer* buf,
                dbdky::Timestamp time)
{
    dbdky::string msg(buf->retrieveAllAsString());
    LOG_INFO << conn->name() << "received at [" << time.toString() << "]" << msg.size() << "bytes: " << msg;

    
    //TODO:
    string response;
    TiXmlDocument doc;
   
    doc.Parse(msg.c_str());
    
    TiXmlNode* node = NULL;
    TiXmlElement* requestElement = NULL;
    
    node = doc.FirstChild("request");
    if (NULL == node)
    {
        LOG_INFO << "1. Invalid xml format for incoming string: "; 
        response += static_cast<char>(0x00);
        //TODO:
        conn->send(response);
        return;
    }

    requestElement = node->ToElement();
    if (NULL == requestElement)
    {
        LOG_INFO << "2. Invalid xml format for incoming string";
        response += static_cast<char>(0xff);
        conn->send(response);
        return;
    }

    string typeInfo(requestElement->Attribute("type"));
    if (typeInfo == "heartbeat")
    {
        boost::replace_first(msg, "request type=\"heartbeat\"", "request");
        string resp = detail::upLoadCACData(msg);
        if ("" == resp)
        {
            response += static_cast<char>(0x00); 
        }
        else
        {
            if (detail::validateResponse(resp))
            {
                response += static_cast<char>(0x00);
            }
            else
            {
                response += static_cast<char>(0xff);
            }
        }
    }
    else if (typeInfo == "monidata")
    {
        boost::replace_first(msg, "request type=\"monidata\"", "request");
        string resp = detail::upLoadCACData(msg);
        if ("" == resp)
        {
            response += static_cast<char>(0x00);
        }
        else
        {
            if (detail::validateResponse(resp))
            {
                response += static_cast<char>(0x00);
            }
            else
            {
                response += static_cast<char>(0xff);
            }
        } 
    }
    else
    {
        LOG_INFO << "No recognized request, I will just throw it to ignore";
        // We will take as a normal condition since we don't really throw that onto CAG
        response += static_cast<char>(0x00);
    } 

    conn->send(response);
}
}
}

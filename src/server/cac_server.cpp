#include "cac_server.h"

#include <utils/Logging.h>

#include <boost/bind.hpp>
#include <boost/algorithm/string.hpp>

#include <string>
#include <iostream>
#include <sstream>
#include "tinyxml.h"

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
        return;
    }

    requestElement = node->ToElement();
    if (NULL == requestElement)
    {
        LOG_INFO << "2. Invalid xml format for incoming string";
        response += static_cast<char>(0xff);
    }

    string typeInfo(requestElement->Attribute("type"));
    if (typeInfo == "heartbeat")
    {
        boost::replace_first(msg, "request type=\"heartbeat\"", "request");
        //TODO:
        LOG_INFO << "++++++++++" << msg;
    }
    else if (typeInfo == "monidata")
    {
        boost::replace_first(msg, "request type=\"monidata\"", "request");
        //TODO:
        LOG_INFO << "----------" << msg;
    }
    else
    {
        LOG_INFO << "No recognized request, I will just throw it to CAG";
    } 

    conn->send(response);
}
}
}

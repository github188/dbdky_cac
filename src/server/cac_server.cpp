#include "cac_server.h"

#include <utils/Logging.h>

#include <boost/bind.hpp>

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
    char cRes = 0xff;
    response += cRes;
    conn->send(response);
}
}
}

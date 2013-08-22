#include "echo.h"

#include <utils/Logging.h>

#include <boost/bind.hpp>

EchoServer::EchoServer(dbdky::port::EventLoop* loop,
            const dbdky::port::InetAddress& listenAddr)
  : loop_(loop),
    server_(loop, listenAddr, "EchoServer")
{
    server_.setConnectionCallback(
        boost::bind(&EchoServer::onConnection, this, _1));
    server_.setMessageCallback(
        boost::bind(&EchoServer::onMessage, this, _1, _2, _3));
}

void EchoServer::start()
{
    server_.start();
}

void EchoServer::onConnection(const dbdky::port::TcpConnectionPtr& conn)
{
    LOG_INFO << "EchoServer - " << conn->peerAddress().toIpPort() << 
        " -> " << conn->localAddress().toIpPort() << " is "
        << (conn->connected() ? "UP" : "DOWN");
}

void EchoServer::onMessage(const dbdky::port::TcpConnectionPtr& conn,
                    dbdky::port::Buffer* buf,
                    dbdky::Timestamp time)
{
    dbdky::string msg(buf->retrieveAllAsString());
    LOG_INFO << conn->name() << " echo " << msg.size() << " bytes, "
        << "data received at " << time.toString();
    conn->send(msg);
}

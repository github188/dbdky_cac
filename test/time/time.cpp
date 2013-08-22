#include "time.h"

#include <utils/Logging.h>
#include <port/Endian.h>

#include <boost/bind.hpp>

using namespace dbdky;
using namespace dbdky::port;

TimeServer::TimeServer(dbdky::port::EventLoop* loop,
            const dbdky::port::InetAddress& listenAddr)
  : loop_(loop),
    server_(loop, listenAddr, "TimeServer")
{
    server_.setConnectionCallback(
        boost::bind(&TimeServer::onConnection, this, _1));
    server_.setMessageCallback(
        boost::bind(&TimeServer::onMessage, this, _1, _2, _3));
}

void TimeServer::start()
{
    server_.start();
}

void TimeServer::onConnection(const dbdky::port::TcpConnectionPtr& conn)
{
    LOG_INFO << "TimeServer - " << conn->peerAddress().toIpPort() << " -> " 
        << conn->localAddress().toIpPort() << " is "
        << (conn->connected() ? "UP" : "DOWN");

    if (conn->connected())
    {
        time_t now =  ::time(NULL);
        int32_t be32 = hostToNetwork32(static_cast<int32_t>(now));
        conn->send(&be32, sizeof be32);
        conn->shutdown();
    }
}

void TimeServer::onMessage(const dbdky::port::TcpConnectionPtr& conn,
            dbdky::port::Buffer* buf, 
            dbdky::Timestamp time)
{
    string msg(buf->retrieveAllAsString());
    LOG_INFO << conn->name() << " discards " << msg.size()
             << " bytes received at " << time.toString();
}

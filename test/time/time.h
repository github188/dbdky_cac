#ifndef __TEST_TIME_H_
#define __TEST_TIME_H_

#include <port/TcpServer.h>

class TimeServer
{
public:
    TimeServer(dbdky::port::EventLoop* loop,
            const dbdky::port::InetAddress& listenAddr);

    void start();

private:
    void onConnection(const dbdky::port::TcpConnectionPtr& conn);
    void onMessage(const dbdky::port::TcpConnectionPtr& conn,
            dbdky::port::Buffer* buf,
            dbdky::Timestamp time);

    dbdky::port::EventLoop* loop_;
    dbdky::port::TcpServer server_;
};

#endif    //__TEST_TIME_H_

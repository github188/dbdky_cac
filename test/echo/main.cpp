#include "echo.h"

#include <utils/Logging.h>
#include <port/EventLoop.h>

int main()
{
    LOG_INFO << "pid = " << getpid();
    dbdky::port::EventLoop loop;
    dbdky::port::InetAddress listenAddr(2007);
    EchoServer server(&loop, listenAddr);
    server.start();
    loop.loop();
}

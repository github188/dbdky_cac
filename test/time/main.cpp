#include "time.h"

#include <utils/Logging.h>
#include <port/EventLoop.h>

using namespace dbdky;
using namespace dbdky::port;

int main()
{
    LOG_INFO << "pid = " << getpid();
    EventLoop loop;
    InetAddress listenAddr(2037);
    TimeServer server(&loop, listenAddr);
    server.start();
    loop.loop();
}

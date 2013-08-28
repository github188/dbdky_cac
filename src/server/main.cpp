#include "cac_server.h"

#include <utils/Logging.h>
#include <port/EventLoop.h>

using namespace dbdky;
using namespace dbdky::port;
using namespace dbdky::cac_server;

int main()
{
    LOG_INFO << "pid = " << getpid();
    EventLoop loop;
    InetAddress listenAddr("127.0.0.1", 6000);
    dbdky::cac_server::cac_server server(&loop, listenAddr, "cac_server");
    server.start();
    loop.loop();

    return 0;
}

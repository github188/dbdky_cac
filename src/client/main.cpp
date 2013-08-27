#include "UpLoadService.h"

#include <utils/Logging.h>
#include <port/EventLoop.h>
#include <port/InetAddress.h>

using namespace dbdky;
using namespace dbdky::port;
using namespace dbdky::cac_client;

int main()
{
    EventLoop loop;
    InetAddress proxyAddr(6000);
    UpLoadService server(&loop, proxyAddr, "UpLoadService");
    server.start();
    loop.loop();
    return 0;
}

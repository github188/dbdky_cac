#include "ConfigUtil.h"

using namespace dbdky;
using namespace port;

boost::shared_ptr<ConfUtil> ConfUtil::instance_;
boost::shared_ptr<ConfUtil> ConfUtil::getInstance()
{
    if (!instance_.get())
    {
        instance_ = boost::shared_ptr<ConfUtil>(new ConfUtil);
    }

    return instance_;
}

ConfUtil::ConfUtil()
  : systemTick_(1),
    heartBeatTick_(2),
    uploadMoniDataTick_(3),
    dbPath_("tcp://127.0.0.1:3306"),
    dbUser_("root"),
    dbPasswd_("kevinLike$"),
    dbName_("omsdb"),
    cacid_("22M00000022376016"),
    localIP_("127.0.0.1")
{
}

InetAddress& ConfUtil::getProxyAddress() const
{
    InetAddress proxyAddress(1000);
    return proxyAddress;
}

uint16_t ConfUtil::getSystemTick() const
{
    return systemTick_;
}

uint32_t ConfUtil::getHeartbeatTick() const
{
    return heartBeatTick_;
}

uint32_t ConfUtil::getUploadMoniDataTick() const
{
    return uploadMoniDataTick_;
}


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
    uploadMoniDataTick_(3)
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


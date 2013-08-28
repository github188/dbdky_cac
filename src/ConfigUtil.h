#ifndef __PORT_CONFIGUTIL_H_
#define __PORT_CONFIGUTIL_H_

#include <boost/shared_ptr.hpp>
#include <boost/noncopyable.hpp>
#include <port/InetAddress.h>

namespace dbdky
{
namespace port
{
class ConfUtil : boost::noncopyable
{
public:
    static boost::shared_ptr<ConfUtil> getInstance();
    
    InetAddress& getProxyAddress() const;
    uint16_t getSystemTick() const;
    uint32_t getHeartbeatTick() const;
    uint32_t getUploadMoniDataTick() const;
private:
    ConfUtil();

private:
    static boost::shared_ptr<ConfUtil> instance_;
    uint16_t systemTick_;
    uint32_t heartBeatTick_;
    uint32_t uploadMoniDataTick_;
};
}
}



#endif    //__CONFIGUTIL_H_

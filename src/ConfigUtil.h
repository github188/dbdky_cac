#ifndef __PORT_CONFIGUTIL_H_
#define __PORT_CONFIGUTIL_H_

#include <boost/shared_ptr.hpp>
#include <boost/noncopyable.hpp>
#include <port/InetAddress.h>

#include <string>

using std::string;

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
 
    string getDBPath() const
    {
        return dbPath_;
    }

    string getDBUser() const
    {
        return dbUser_;
    }

    string getDBPasswd() const
    {
        return dbPasswd_;
    }

    string getDBName() const
    {
        return dbName_;
    }

    string getCacId() const
    {
        return cacid_;
    }

private:
    ConfUtil();

private:
    static boost::shared_ptr<ConfUtil> instance_;
    uint16_t systemTick_;
    uint32_t heartBeatTick_;
    uint32_t uploadMoniDataTick_;
    string dbPath_;
    string dbUser_;
    string dbPasswd_;
    string dbName_;
    string cacid_;
};
}
}



#endif    //__CONFIGUTIL_H_

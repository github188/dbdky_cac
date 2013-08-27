#include "UpLoadService.h"
#include "ConfigUtil.h"
#include <boost/bind.hpp>

#include <utils/Logging.h>


namespace dbdky
{
namespace cac_client
{
    UpLoadService::UpLoadService(EventLoop* loop,
                        const InetAddress& proxyAddr,
                        const string& name)
      : loop_(loop),
        name_(name),
        client_(loop, proxyAddr, name)
    {
        client_.setConnectionCallback(
            boost::bind(&UpLoadService::onConnection, this, _1));
        client_.setMessageCallback(
            boost::bind(&UpLoadService::onMessage, this, _1, _2, _3));
        client_.setWriteCompleteCallback(
            boost::bind(&UpLoadService::onWriteComplete, this, _1));
        
    }

    UpLoadService::~UpLoadService()
    {
    }

    void UpLoadService::start()
    {
        systemTimer_ = loop_->runEvery(ConfUtil::getInstance()->getSystemTick(),
            boost::bind(&UpLoadService::onSystemTimer, this));

        heartBeatTimer_ = loop_->runEvery(ConfUtil::getInstance()->getHeartbeatTick(),
            boost::bind(&UpLoadService::onHeartbeatTimer, this));
    }

    void UpLoadService::stop()
    {
    }

    void UpLoadService::onSystemTimer()
    {
        LOG_INFO << "onSystemTimer";
    }

    void UpLoadService::onHeartbeatTimer()
    {
        LOG_INFO << "onHeartbeatTimer";
    }
    
    void UpLoadService::onConnection(const TcpConnectionPtr& conn)
    {
    }
   
    void UpLoadService::onMessage(const TcpConnectionPtr& conn,
                    Buffer* buf,
                    Timestamp receiveTime)
    {
    }

    void UpLoadService::onWriteComplete(const TcpConnectionPtr& conn)
    {
    }
}
}

#include "UpLoadService.h"
#include "ConfigUtil.h"
#include <boost/bind.hpp>

#include <utils/Logging.h>
#include <utils/Timestamp.h>


namespace dbdky
{
namespace cac_client
{
    UpLoadService::UpLoadService(EventLoop* loop,
                        const InetAddress& proxyAddr,
                        const string& name)
      : loop_(loop),
        name_(name),
        client_(loop, proxyAddr, name),
        threadPool_(new EventLoopThreadPool(loop)),
        dbhelper_(new DBHelper(ConfUtil::getInstance()->getDBPath(),
                             ConfUtil::getInstance()->getDBUser(),
                             ConfUtil::getInstance()->getDBPasswd(),
                             ConfUtil::getInstance()->getDBName()))
    {
        client_.setConnectionCallback(
            boost::bind(&UpLoadService::onConnection, this, _1));
        client_.setMessageCallback(
            boost::bind(&UpLoadService::onMessage, this, _1, _2, _3));
        client_.setWriteCompleteCallback(
            boost::bind(&UpLoadService::onWriteComplete, this, _1));
       
        //FIXME:
        threadPool_->setThreadNum(6);
        threadPool_->start();
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
        uploadMoniDataTimer_ = loop_->runEvery(ConfUtil::getInstance()->getUploadMoniDataTick(),
            boost::bind(&UpLoadService::onUploadMoniDataTimer, this));
    }

    void UpLoadService::stop()
    {
    }

    void UpLoadService::onSystemTimer()
    {
    //    LOG_INFO << "onSystemTimer";
    }

    void UpLoadService::onHeartbeatTimer()
    {
    //    LOG_INFO << "onHeartbeatTimer";
    }
   
    void UpLoadService::onUploadMoniDataTimer()
    {
        LOG_INFO << "onUploadMoniDataTimer";
        //loop_->runInLoop(boost::bind(&UpLoadService::uploadMoniDataTask, this));
        //EventLoop* ioLoop = threadPool_->getNextLoop();
        //ioLoop->runInLoop(boost::bind(&UpLoadService::uploadMoniDataTask, this));
        loop_->queueInLoop(
            boost::bind(&UpLoadService::uploadMoniDataTask, this));
    }

    void UpLoadService::uploadMoniDataTask()
    {
        LOG_INFO << "uploadMoniDataTask";

        if (!dbhelper_->isConnected())
        {
            if (!dbhelper_->connect())
            {
                LOG_ERROR << "Connect database fail.";
                return;
            }
        }

        boost::shared_ptr<ResultSet> result(dbhelper_->query("select * from bd_cd"));

        if (!result.get())
        {
            LOG_INFO << "Cannot get data from database";
            return;
        }

        try
        {
            string sTmp;
            sTmp += "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
            sTmp += "<request><monitordata cacid=\"" + ConfUtil::getInstance()->getCacId();
            sTmp += "\" datanodenum=\"init_rowcount\">";

            while (result->next())
            {
		string sObjid = result->getString("OBJID");
        	string sLinkedDevice = result->getString("LinkedDevice");
        	string sDeviceCode = result->getString("DeviceCode");
        	string sPhase = result->getString("Phase");
        	string sJCLXBM = result->getString("JCLXBM");
        	string sBDZMC = result->getString("BDZMC");
        	string sSSZT = result->getString("SSZT");
        	string sBJCSBMC = result->getString("BJCSBMC");
        	string sJCLXMC = result->getString("JCLXMC");
        	string sZIEDID = result->getString("ZIEDID");
        	string sIEDID = result->getString("IEDID");

		LOG_INFO << "OBJID:" << sObjid;
                

            }
        }
        catch (std::exception& e)
        {
            LOG_ERROR << e.what();
        }
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

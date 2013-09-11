#include "UpLoadService.h"
#include "ConfigUtil.h"
#include "Default_defs.h"

#include <boost/bind.hpp>
#include <boost/scoped_ptr.hpp>
#include <boost/algorithm/string.hpp>
#include <boost/lexical_cast.hpp>

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
        updateIntervalCounter_(0),
        threadPool_(new EventLoopThreadPool(loop)),
        dbhelper_(new DBHelper(ConfUtil::getInstance()->getDBPath(),
                             ConfUtil::getInstance()->getDBUser(),
                             ConfUtil::getInstance()->getDBPasswd(),
                             ConfUtil::getInstance()->getDBName())),
        updateTimestamp_(ConfUtil::getInstance()->getLastUploadTime())
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

            connect();
    }

    void UpLoadService::stop()
    {
    }

    void UpLoadService::onSystemTimer()
    {
        uint64_t tmpTs = Timestamp::now().microSecondsSinceEpoch()
;

        {
            MutexLockGuard lock(mutexTimestamp_);
            tmpTs = updateTimestamp_;
        }
 
        string sTs;

        try 
        {
            sTs = boost::lexical_cast<string>(tmpTs);
        }
        catch (boost::bad_lexical_cast& e)
        {
            LOG_ERROR << "Can't cast timestamp";
            return;
        }
            
        if (++updateIntervalCounter_ >= DEFAULT_UPDATE_INTERVAL_COUNTER)
        {
            boost::bind(&ConfUtil::saveItem2File, ConfUtil::getInstance(), _1, _2)("last_upload", sTs);
            updateIntervalCounter_ = 0;
        }
    }

    void UpLoadService::onHeartbeatTimer()
    {
        loop_->queueInLoop(
            boost::bind(&UpLoadService::uploadHeartbeatTask, this)); 
    }
   
    void UpLoadService::onUploadMoniDataTimer()
    {
        loop_->queueInLoop(
            boost::bind(&UpLoadService::uploadMoniDataTask, this));
    }

    void UpLoadService::uploadHeartbeatTask()
    {
        LOG_INFO << "uploadHeartbeatTask"; 
       
        string sTmp("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");

        string sJczzid;

        if (!dbhelper_->isConnected())
        {
            if (!dbhelper_->connect())
            {
                LOG_ERROR << "Connect database fail.";
                return;
            }
        }

        boost::shared_ptr<ResultSet> result(dbhelper_->query("select * from bd_cd"));
        sTmp += "<request type=\"heartbeat\"><monitordata cac id=\"";
        sTmp += ConfUtil::getInstance()->getCacId();

        sTmp += "<ip>";
        sTmp += ConfUtil::getInstance()->getLocalIP();
        sTmp += "</ip>";


        sTmp += "<curtime>";
        sTmp += Timestamp::now().toFormattedStringDash();
        sTmp += "</curtime>";


        sTmp += "<operationtemperature>15.00</operationtemperature></cac>";

        sTmp += "<sensors>";

  
        string sTmp1; 
        try
        {
            while (result->next())
            {
                sJczzid = result->getString("DeviceCode");
                sTmp1 += "<sensor id = \"";
                sTmp1 += sJczzid;
                sTmp1 += "\">";

                sTmp1 += "<status>NORMAL</status>";

                sTmp1 += "<operationtemperature>15.00</operationtemperature>";

                sTmp1 += "</sensor>"; 

            }

        }
        catch (std::exception& e)
        {
            LOG_ERROR << e.what();
        }

        sTmp += "</sensors></request>";

        sTmp += sTmp1;
         
        //TODO:
        //connect();
        write(sTmp);
        disconnect();


    }

    void UpLoadService::uploadMoniDataTask()
    {
        LOG_INFO << "uploadMoniDataTask";
        int iCount = 0;

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

        string sTmp("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
        try
        {
            sTmp += "<request type=\"monidata\"><monitordata cacid=\"" + ConfUtil::getInstance()->getCacId();
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

		std::transform(sJCLXBM.begin(), sJCLXBM.end(), sJCLXBM.begin(), ::tolower);

                uint64_t tmpTs;

                {
                    MutexLockGuard lock(mutexTimestamp_);
                    tmpTs = updateTimestamp_;
                }

                //string sQuery = "select * from " + sJCLXBM
     //                   + " where cdid = " + sObjid
     //                   + " and AcquisitionTime > " + "'" + Timestamp::now().toFormattedStringDash() + "';";
     
                string sQuery = "select * from " + sJCLXBM
                        + " where cdid = " + sObjid
                        + " and AcquisitionTime > " + "'" + Timestamp(tmpTs).toFormattedStringDash() + "';";
     
                LOG_INFO << "::::::::::" << sQuery; 

                if (!dbhelper_->isConnected())
                {
                    dbhelper_->connect();
                }

                boost::shared_ptr<ResultSet> tmpresult = 
                    dbhelper_->query(sQuery.c_str());

                if (!tmpresult.get())
                {
                    LOG_INFO << "*** Query return empty";
                }
                else
                {
                    while (tmpresult->next())
                    {
                        string timestamp = result->getString("AcquisitionTime");
                        sTmp +=  "<datanode sensorid=\"" + sDeviceCode + "\"> ";
                        sTmp += "<equipmentid>" + sLinkedDevice + "</equipmentid>";
                        sTmp += "<timestamp>" + timestamp + "</timestamp>";
                        sTmp += "<attrs>";
                        sTmp += "<attr name = \"Phase\" value=\"" + sPhase + "\" alarm=\"FALSE\" />";
			
 			sTmp += makeNodeXml(sJCLXBM, result);

                        sTmp += "</attrs></datanode>";
                    }

                    tmpresult->last();
                    iCount += tmpresult->getRow();
                }
            }
        }
        catch (std::exception& e)
        {
            LOG_ERROR << e.what();
        }

        sTmp += "</monitordata></request>";

        string sICount;
	try
        {
            sICount = boost::lexical_cast<string>(iCount);
        }
        catch (boost::bad_lexical_cast& e)
        {
            sICount += "0";
        }

        boost::replace_first(sTmp, "init_rowcount", sICount);
       
        //TODO:
        //connect();
        write(sTmp);

        {
            MutexLockGuard lock(mutexTimestamp_);
            updateTimestamp_ = Timestamp::now().microSecondsSinceEpoch();
        }

        disconnect();
          
    }

    void UpLoadService::connect()
    {
        client_.connect();
    }

    void UpLoadService::disconnect()
    {
        //client_.disconnect();
    }

    void UpLoadService::write(const StringPiece& message)
    {
        MutexLockGuard lock(mutexConn_);
        if (connection_)
        {
            dbdky::port::Buffer buf;
            buf.append(message.data(), message.size());
            //int32_t len = static_cast<int32_t>(message.size());
            //int32_t be32 = hostToNetwork32(len);
            //buf.prepend(&be32, sizeof be32);
            connection_->send(&buf);
        }
    }
 
    void UpLoadService::onConnection(const TcpConnectionPtr& conn)
    {
        LOG_INFO << conn->localAddress().toIpPort() << " -> "
                << conn->peerAddress().toIpPort() << " is "
                << (conn->connected() ? "UP" : "DOWN");

        MutexLockGuard lock(mutexConn_);
        if (conn->connected())
        {
            connection_ = conn;
        }
        else
        {
            connection_.reset();
        }
    }
   
    void UpLoadService::onMessage(const TcpConnectionPtr& conn,
                    Buffer* buf,
                    Timestamp receiveTime)
    {
        string response = buf->retrieveAllAsString();
        if (response[0] == 0x00)
        {
            LOG_INFO << "SUCCESS";
        }
        else
        {
            LOG_INFO << "BAD";
        }
    }

    void UpLoadService::onWriteComplete(const TcpConnectionPtr& conn)
    {
    }

    string UpLoadService::makeNodeXml(const string& str, const ResultSetPtr& rs)
    {
        string ret;
        
        if (str == "bd_yzrj")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_yzrj, this, _1)(rs);
        }
        else if (str == "bd_jbfd")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_jbfd, this, _1)(rs);
        } 
        else if (str == "bd_txxl")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_txxl, this, _1)(rs);
        }
        else if (str == "bd_sf6")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_sf6, this, _1)(rs);
        }
        else if (str == "bd_sf6ws")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_sf6ws, this, _1)(rs);
        }
        else if (str == "bd_ws")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_ws, this, _1)(rs);
        }
        else if (str == "bd_dcyw")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_dcyw, this, _1)(rs);
        }
        else if (str == "bd_rzcw")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_rzcw, this, _1)(rs);
        }
        else if (str == "bd_blqjyjc")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_blqjyjc, this, _1)(rs);
        }
        else if (str == "bd_drjc")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_drjc, this, _1)(rs);
        }
        else if (str == "bd_fhdlwave")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_fhdlwave, this, _1)(rs);
        }
        else if (str == "bd_fhzxqwave")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_fhzxqwave, this, _1)(rs);
        }
        else if (str == "bd_dlqjbfd")
        {
            boost::bind(&UpLoadService::XmlNodeMaker_dlqjbfd, this, _1)(rs);
        }
        else
        {
            LOG_INFO << "No XmlNodeMaker can be matched";
        }

        return ret;
    }

    string UpLoadService::XmlNodeMaker_yzrj(const ResultSetPtr& rs)
    {
        string ret;

        string sH2 = rs->getString("H2");
        string sCH4 = rs->getString("CH4");
        string sC2H6 = rs->getString("C2H6");
        string sC2H4 = rs->getString("C2H4");
        string sC2H2 = rs->getString("C2H2");
        string sCO = rs->getString("CO");
        string sCO2 = rs->getString("CO2");
        string sO2 = rs->getString("O2");
        string sN2 = rs->getString("N2");
        string sTotalHydrocarbon = rs->getString("TotalHydrocarbon");

        ret += "<attr name=\"H2\" value=\"" + sH2 + "\"   />";
	ret += "<attr name=\"CO\" value=\"" + sCO + "\"/>";
	ret += "<attr name=\"CO2\" value=\"" + sCO2 + "\"/>";
	ret += "<attr name=\"CH4\" value=\"" + sCH4 + "\"/>";
	ret += "<attr name=\"C2H4\" value=\"" + sC2H4 + "\"/>";
	ret += "<attr name=\"C2H2\" value=\"" + sC2H2 + "\"/>";
	ret += "<attr name=\"C2H6\" value=\"" + sC2H6 + "\"/>";
	ret += "<attr name=\"O2\" value=\"" + sO2 + "\"/>";
	ret += "<attr name=\"N2\" value=\"" + sN2 + "\"/>";
	ret += "<attr name=\"TotalHydrocarbon\" value=\"" + sTotalHydrocarbon + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_jbfd(const ResultSetPtr& rs)
    {
        string ret;

        return ret;
    }

    string UpLoadService::XmlNodeMaker_txxl(const ResultSetPtr& rs)
    {
        string ret;
	string sTxxlDl = rs->getString("TotalCoreCurrent");
        ret += "<attr name=\"TotalCoreCurrent\" value=\"" + sTxxlDl + "\"/>";
        return ret;
    }

    string UpLoadService::XmlNodeMaker_sf6(const ResultSetPtr& rs)
    {
        string ret;
	string sTemperature = rs->getString("Temperature");
        string sAbsolutePressure = rs->getString("AbsolutePressure");
        string sDensity = rs->getString("Density");
        string sPressure20C = rs->getString("Pressure20C");

        ret += "<attr name=\"Temperature\" value=\"" + sTemperature + "\" alarm=\"TRUE\" />";
	ret += "<attr name=\"AbsolutePressure\" value=\"" + sAbsolutePressure + "\" alarm=\"TRUE\" />";
	ret += "<attr name=\"Density\" value=\"" + sDensity + "\" alarm=\"TRUE\" />";
	ret += "<attr name=\"Pressure20C\" value=\"" + sPressure20C + "\" alarm=\"TRUE\" />";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_sf6ws(const ResultSetPtr& rs)
    {
        string ret;
        string sTemperature = rs->getString("Temperature");
        string sMoisture = rs->getString("Moisture");

        ret += "<attr name=\"Temperature\" value=\"" + sTemperature + "\" alarm=\"TRUE\" />";
	ret += "<attr name=\"Moisture\" value=\"" + sMoisture + "\" alarm=\"TRUE\" />";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_ws(const ResultSetPtr& rs)
    {
        string ret;
	string sMoisture = rs->getString("Moisture");

        ret += "<attr name=\"Moisture\" value=\"" + sMoisture + "\" alarm=\"TRUE\" />";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_dcyw(const ResultSetPtr& rs)
    {
        string ret;
        string sOilTemperature = rs->getString("OilTemperature");

        ret += "<attr name=\"OilTemperature\" value=\"" + sOilTemperature + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_rzcw(const ResultSetPtr& rs)
    {
        string ret;
        string sRZWD = rs->getString("RZWD");
        
        ret += "<attr name=\"RZWD\" value=\"" + sRZWD + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_blqjyjc(const ResultSetPtr& rs)
    {
        string ret;
        string sSystemVoltage = rs->getString("SystemVoltage");
	string sTotalCurrent = rs->getString("TotalCurrent");
	string sResistiveCurrent = rs->getString("ResistiveCurrent");
	string sActionCount = rs->getString("ActionCount");
	string sLastActionTime = rs->getString("LastActionTime");

	ret += "<attr name=\"SystemVoltage\" value=\"" + sSystemVoltage + "\"/>";
	ret += "<attr name=\"TotalCurrent\" value=\"" + sTotalCurrent + "\"/>";
	ret += "<attr name=\"ResistiveCurrent\" value=\"" + sResistiveCurrent + "\"/>";
	ret += "<attr name=\"ActionCount\" value=\"" + sActionCount + "\"/>";
	ret += "<attr name=\"LastActionTime\" value=\"" + sLastActionTime + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_drjc(const ResultSetPtr& rs)
    {
        string ret;

	string sCapacitance = rs->getString("Capacitance");
	string sLossFactor = rs->getString("LossFactor");
	string sTotalCurrent = rs->getString("TotalCurrent");
	string sSystemVoltage = rs->getString("SystemVoltage");
	string sUnbalanceCurrent = rs->getString("UnbalanceCurrent");
	string sUnbalanceVoltage = rs->getString("UnbalanceVoltage");


	ret += "<attr name=\"Capacitance\" value=\"" + sCapacitance + "\"/>";
	ret += "<attr name=\"LossFactor\" value=\"" + sLossFactor + "\"/>";
	ret += "<attr name=\"TotalCurrent\" value=\"" + sTotalCurrent + "\"/>";
	ret += "<attr name=\"SystemVoltage\" value=\"" + sSystemVoltage + "\"/>";
	ret += "<attr name=\"UnbalanceCurrent\" value=\"" + sUnbalanceCurrent + "\"/>";
	ret += "<attr name=\"UnbalanceVoltage\" value=\"" + sUnbalanceVoltage + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_fhdlwave(const ResultSetPtr& rs)
    {
        string ret;
        string sAction = rs->getString("Action");

	ret += "<attr name=\"Action\" value=\"" + sAction + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_fhzxqwave(const ResultSetPtr& rs)
    {
        string ret;
        string sAction = rs->getString("Action");

	ret += "<attr name=\"Action\" value=\"" + sAction + "\"/>";

        return ret;
    }

    string UpLoadService::XmlNodeMaker_dlqjbfd(const ResultSetPtr& rs)
    {
        string ret;
        string sDischargeCapacity = rs->getString("DischargeCapacity");
	string sDischargePosition = rs->getString("DischargePosition");
	string sPulseCount = rs->getString("PulseCount");

	ret += "<attr name=\"DischargeCapacity\" value=\"" + sDischargeCapacity + "\"/>";
	ret += "<attr name=\"DischargePosition\" value=\"" + sDischargePosition + "\"/>";
	ret += "<attr name=\"PulseCount\" value=\"" + sPulseCount + "\"/>";

        return ret;
    }

}
}

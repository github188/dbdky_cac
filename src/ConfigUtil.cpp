#include "ConfigUtil.h"

using namespace dbdky;
using namespace port;

#include <utils/Timestamp.h>
#include <utils/Logging.h>

#include <boost/lexical_cast.hpp>

#include "tinyxml.h"

using namespace dbdky;

static const string confFileName = "./.cac_client.conf";

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
    localIP_("127.0.0.1"),
    proxyIP_("127.0.0.1"),
    proxyPort_(6000),
    lastUploadTime_(Timestamp::now().microSecondsSinceEpoch())
{
    updateConfigs();
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

void ConfUtil::updateConfigs()
{
    TiXmlElement* element = NULL;
    TiXmlNode *node = NULL;
    TiXmlNode *inside = NULL;

    TiXmlDocument doc(confFileName);
    doc.LoadFile();

    node = doc.FirstChild("configs");

    if (NULL == node)
    {
        LOG_ERROR << "Parse config file error.";
        return;
    }

    element = node->ToElement();
    if (NULL == element)
    {
        LOG_ERROR << "Parse config file error.";
        return;
    }

    inside = element->FirstChild("item");
    
    while (inside)
    {
        TiXmlElement *tmpElement = inside->ToElement();
        if (NULL == tmpElement)
        {
            LOG_WARN << "Bad config item";
            inside = element->NextSibling();
            continue;
        }

        string itemName(tmpElement->Attribute("name"));
        string itemValue(tmpElement->Attribute("value"));

        if ("local_ip" == itemName)
        {
            localIP_ = itemValue;
        }
        else if ("proxy_ip" == itemName)
        {
            proxyIP_ = itemValue;
        }
        else if ("proxy_port" == itemName)
        {
            uint16_t tmpProxyPort;
            try
            {
                tmpProxyPort = boost::lexical_cast<uint16_t>(itemValue);
                proxyPort_ = tmpProxyPort; 
            }
            catch (boost::bad_lexical_cast& e)
            {
                LOG_WARN << "Parse item fail.";
            }
        }
        else if ("system_tick" == itemName)
        {
            uint16_t tmpSystemTick;

            try 
            {
                tmpSystemTick = boost::lexical_cast<uint16_t>(itemValue);
 
                systemTick_ = tmpSystemTick;
            }
            catch (boost::bad_lexical_cast& e)
            {
                LOG_WARN << "Parse item fail.";
            }
        }
        else if ("heartbeat_tick" == itemName)
        {
            uint32_t tmpHeartbeatTick;

            try
            {
                tmpHeartbeatTick = boost::lexical_cast<uint32_t>(itemValue);
                
                heartBeatTick_ = tmpHeartbeatTick;
            }
            catch (boost::bad_lexical_cast& e)
            {
                LOG_WARN << "Parse item fail.";
            }
        }
        else if ("uploadmonidata_tick" == itemName)
        {
            uint32_t tmpUploadMoniDataTick;

            try
            {
                tmpUploadMoniDataTick = boost::lexical_cast<uint32_t>(itemValue);
 
                uploadMoniDataTick_ = tmpUploadMoniDataTick;
            }
            catch (boost::bad_lexical_cast& e)
            {
                LOG_WARN << "Parse item fail.";
            }
        }
        else if ("db_path" == itemName)
        {
            dbPath_ = itemValue;
        }
        else if ("db_user" == itemName)
        {
            dbUser_ = itemValue;
        }
        else if ("db_passwd" == itemName)
        {
            dbPasswd_ = itemValue;
        }
        else if ("db_name" == itemName)
        {
            dbName_ = itemValue;
        }
        else if ("cacid" == itemName)
        {
            cacid_ = itemValue;
        }
        else if ("last_upload" == itemName)
        {
            
        }
        else
        {
            LOG_WARN << "Unknown config item found.";
            node = element->NextSibling();
            continue;
        }

        node = element->NextSibling();
    }    
    
}


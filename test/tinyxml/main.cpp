#include <iostream>
#include <string>
#include <sstream>

#include <utils/Timestamp.h>
#include <utils/Logging.h>

#include <boost/algorithm/string.hpp>

#include <boost/lexical_cast.hpp>

#include "tinyxml.h"

using namespace std;
using namespace dbdky;

string testXml = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><request type=\"heartbeat\"><abc /></request>";
#if 0
int main()
{
    TiXmlDocument doc;
    doc.Parse(testXml.c_str());

    TiXmlNode* node = 0;
    TiXmlElement* requestElement = 0;
   
    node = doc.FirstChild("request");
    assert(node);
    requestElement = node->ToElement();
    assert(requestElement);

    string typeInfo(requestElement->Attribute("type"));

    if (typeInfo == "heartbeat")
    {
        cout << "Hey heartbeat" << endl;
        boost::replace_first(testXml,"request type=\"heartbeat\"", "request");
    }
    
    cout << testXml << endl;

    return 0;
}
#endif

static uint16_t systemTick_;
static uint32_t heartBeatTick_;
static uint32_t uploadMoniDataTick_;
static string dbPath_;
static string dbUser_;
static string dbPasswd_;
static string dbName_;
static string cacid_;
static string localIP_;
static string proxyIP_;
static uint16_t proxyPort_;
static uint64_t lastUploadTime_;



static void updateConfigs()
{
    TiXmlElement* element = NULL;
    TiXmlNode *node = NULL;
    TiXmlNode *inside = NULL;

    TiXmlDocument doc("cac_config.xml");
    doc.LoadFile();
    
    if (doc.Error() && doc.ErrorId() == TiXmlBase::TIXML_ERROR_OPENING_FILE)
    {
        LOG_ERROR << "ERROR";
        return;
    }

    LOG_INFO << "aaa"; 
    node = doc.FirstChild("configs");   
    LOG_INFO << "bbb";
    if ((NULL == node) || !(element = node->ToElement()))
    {
        LOG_ERROR << "Parse config file error.";
        return;
    }

    LOG_INFO << "ccc";
    inside = element->FirstChild("item");
    
    while (inside)
    {
        LOG_INFO << "ddd";
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
            uint64_t tmpLastUpload;

            try
            {
                lastUploadTime_ = boost::lexical_cast<uint64_t>(itemValue);
                lastUploadTime_ = tmpLastUpload;
            }
            catch (boost::bad_lexical_cast& e)
            {
                LOG_WARN << "Parse item fail.";
            }
        }
        else
        {
            LOG_WARN << "Unknown config item found.";
            node = element->NextSibling();
            continue;
        }

        inside = element->NextSibling();
    }
}

static void dumpConfigs()
{
    LOG_INFO << "*********ConfUtil************";
    LOG_INFO << "systemTick: " << systemTick_;
    LOG_INFO << "heartBeatTick: " << heartBeatTick_;
    LOG_INFO << "uploadMoniDataTick: " << uploadMoniDataTick_;
    LOG_INFO << "dbPath: " << dbPath_;
    LOG_INFO << "dbUser: " << dbUser_;
    LOG_INFO << "dbPasswd: " << dbPasswd_;
    LOG_INFO << "dbName: " << dbName_;
    LOG_INFO << "cacid: " << cacid_;
    LOG_INFO << "localIP: " << localIP_;
    LOG_INFO << "proxyIP: " << proxyIP_;
    LOG_INFO << "proxyPort: " << proxyPort_;
    LOG_INFO << "lastUploadTime: " << Timestamp(lastUploadTime_).toFormattedString();
    LOG_INFO << "************ConfUtil***********************";
}



int main()
{
    updateConfigs();
    dumpConfigs();
    return 0;
}







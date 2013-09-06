#include <iostream>
#include <string>
#include <sstream>
#include <boost/algorithm/string.hpp>

#include "tinyxml.h"

using namespace std;
string testXml = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><request type=\"heartbeat\"><abc /></request>";
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






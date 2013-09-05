#include "soapCAGWebServicePortSoapProxy.h"
#include "CAGWebServicePortSoap.nsmap"

#include <iostream>

using namespace std;
int main()
{
    CAGWebServicePortSoapProxy service;
   
    _ns1__upLoadCACData	param;
    _ns1__upLoadCACDataResponse response;
    
    *(param.sXml) += "";
    
    if (service.upLoadCACData(&param, &response) == SOAP_OK)
    {
        cout << "OK:" << *(response.upLoadCACDataResult) << endl;
    }
    else
    {
        cout << "BAD" << endl;
        service.soap_stream_fault(std::cerr);
    }

    service.destroy();
    
    
}

#set(ws_interface_SRCS
#  cag/soapCAGAccessServiceHttpBindingProxy.cpp
#  cag/soapC.cpp
#  cag/soapCAGAccessServiceHttpBindingService.cpp
#)

#set(ws_interface_SRCS
#  stub/soapCAGWebServicePortSoapProxy.cpp
#  stub/soapCAGWebServicePortSoap12Proxy.cpp
#  stub/soapCAGWebServicePortSoap12Service.cpp
#  stub/soapC.cpp
#  stub/soapCAGWebServicePortSoapService.cpp
#)

set(ws_interface_SRCS
  cag_test/soapCAGAccessServiceHttpBindingProxy.cpp
  cag_test/soapC.cpp
  cag_test/soapCAGAccessServiceHttpBindingService.cpp
)

add_library(ws_interface ${ws_interface_SRCS})
target_link_libraries(ws_interface gsoap++)
install(TARGETS ws_interface DESTINATION lib)

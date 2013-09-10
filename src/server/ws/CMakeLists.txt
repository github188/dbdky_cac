#set(ws_interface_SRCS
#  cag/soapCAGAccessServiceHttpBindingProxy.cpp
#  cag/soapC.cpp
#)

set(ws_interface_SRCS
  stub/soapCAGWebServicePortSoapProxy.cpp
  stub/soapC.cpp
)

add_library(ws_interface ${ws_interface_SRCS})
target_link_libraries(ws_interface gsoap++)
install(TARGETS ws_interface DESTINATION lib)

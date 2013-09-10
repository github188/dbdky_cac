set(test_ws_SRCS
  main.cpp
  soapCAGWebServicePortSoapProxy.cpp
  soapC.cpp
)

add_executable(test_ws ${test_ws_SRCS})
target_link_libraries(test_ws gsoap++)
install(TARGETS test_ws DESTINATION bin)

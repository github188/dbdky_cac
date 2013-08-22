set(test_echo_SRCS
  echo.cpp
  main.cpp)

add_executable(test_echo ${test_echo_SRCS})
target_link_libraries(test_echo utils port)
install(TARGETS test_echo DESTINATION bin)

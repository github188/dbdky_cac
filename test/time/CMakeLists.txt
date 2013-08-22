set(test_timeclient_SRCS
  timeclient.cpp
)

set(test_time_SRCS
  time.cpp
  main.cpp
)

add_executable(test_timeclient ${test_timeclient_SRCS})
target_link_libraries(test_timeclient utils port)
install(TARGETS test_timeclient DESTINATION bin)

add_executable(test_time ${test_time_SRCS})
target_link_libraries(test_time utils port)
install(TARGETS test_time DESTINATION bin)

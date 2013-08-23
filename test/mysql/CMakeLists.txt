set(test_mysql_SRCS
  main.cpp
)

include_directories(${THIRD_PARTY_DIR}/mysql-connector-c++-1.1.3/driver)
include_directories(${THIRD_PARTY_DIR}/mysql-connector-c++-1.1.3)
include_directories(${THIRD_PARTY_DIR}/mysql-connector-c++-1.1.3/cppconn)
link_directories(/usr/lib/mysql)
add_executable(test_mysql ${test_mysql_SRCS})
target_link_libraries(test_mysql mysqlcppconn)
install(TARGETS test_mysql DESTINATION bin)

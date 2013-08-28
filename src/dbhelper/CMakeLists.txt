set(dbhelper_SRCS
  dbhelper.cpp
)

include_directories(${THIRD_PARTY_DIR}/mysql-connector-c++-1.1.3/driver)
include_directories(${THIRD_PARTY_DIR}/mysql-connector-c++-1.1.3)
include_directories(${THIRD_PARTY_DIR}/mysql-connector-c++-1.1.3/cppconn)
link_directories(/usr/lib/mysql)
add_library(dbhelper ${dbhelper_SRCS})
target_link_libraries(dbhelper mysqlcppconn)
install(TARGETS dbhelper DESTINATION lib)

set(cac_client_SRCS
  UpLoadService.cpp
  main.cpp
)

link_directories(/usr/lib/mysql)
add_executable(cac_client ${cac_client_SRCS})
target_link_libraries(cac_client port utils confutil dbhelper)
install(TARGETS cac_client DESTINATION bin)
install(FILES .cac_client.conf DESTINATION bin)

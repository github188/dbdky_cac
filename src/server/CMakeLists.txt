set(cac_server_SRCS
  cac_server.cpp
  main.cpp
)

include_directories(${THIRD_PARTY_DIR}/tinyxml)
add_executable(cac_server ${cac_server_SRCS})
target_link_libraries(cac_server utils port confutil tinyxml)
install(TARGETS cac_server DESTINATION bin)
install(FILES .cac_server.conf DESTINATION bin)

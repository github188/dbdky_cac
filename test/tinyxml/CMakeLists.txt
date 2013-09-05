set(test_tinyxml_SRCS
  main.cpp
)

include_directories(${THIRD_PARTY_DIR}/tinyxml)

add_executable(test_tinyxml ${test_tinyxml_SRCS})
target_link_libraries(test_tinyxml tinyxml)
install(TARGETS test_tinyxml DESTINATION bin)

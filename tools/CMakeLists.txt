set(ts2microsecs_SRCS
  ts2microsecs.cpp
)

add_executable(ts2microsecs ${ts2microsecs_SRCS})
target_link_libraries(ts2microsecs utils)
install(TARGETS ts2microsecs DESTINATION bin)

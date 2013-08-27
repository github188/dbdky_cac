set(dbhelper_SRCS
  dbhelper.cpp
)

add_library(dbhelper ${dbhelper_SRCS})
install(TARGETS dbhelper DESTINATION lib)

# Install script for directory: /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/debug-install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL FILES
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/README"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/INSTALL"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/COPYING"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/Licenses_for_Third-Party_Components.txt"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/ANNOUNCEMENT"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL FILES "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/BUILDINFO")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/cppconn/cmake_install.cmake")
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/driver/cmake_install.cmake")
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/examples/cmake_install.cmake")
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/cmake_install.cmake")
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/framework/cmake_install.cmake")
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/CJUnitTestsPort/cmake_install.cmake")
  INCLUDE("/home/kevin/workspace/dbdky_cac/src/server/ws/stub/build/debug/third_party/mysql-connector-c++-1.1.3/test/unit/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)


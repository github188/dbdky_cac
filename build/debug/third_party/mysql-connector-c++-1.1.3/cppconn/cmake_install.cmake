# Install script for directory: /home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/kevin/workspace/dbdky_cac/build/debug/debug-install")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cppconn" TYPE FILE FILES
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/build_config.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/config.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/connection.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/datatype.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/driver.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/exception.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/metadata.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/parameter_metadata.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/prepared_statement.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/resultset.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/resultset_metadata.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/statement.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/sqlstring.h"
    "/home/kevin/workspace/dbdky_cac/third_party/mysql-connector-c++-1.1.3/cppconn/warning.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


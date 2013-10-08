#!/bin/sh

set -x

SOURCE_DIR=`pwd`
BUILD_DIR=${BUILD_DIR:-./build}
BUILD_TYPE=${BUILD_TYPE:-debug}
INSTALL_DIR=${INSTALL_DIR:-./${BUILD_TYPE}-install}
BUILD_NO_EXAMPLES=${BUILD_NO_EXAMPLES:-0}
DAT_DIR=${SOURCE_DIR}/dat

cd src/server/ws/stub \
  && wsdl2h -o CAGAccessService.h CAGAccessService.wsdl \
  && soapcpp2 -i -I../gsoap_inc/import CAGAccessService.h

cd $SOURCE_DIR

cd src/server/ws/cag \
  && wsdl2h -o CAGAccessService.h CAGAccessService.wsdl \
  && soapcpp2 -i -I../gsoap_inc/import CAGAccessService.h

cd $SOURCE_DIR

cd src/server/ws/cag_test \
  && wsdl2h -o CAGAccessService.h CAGAccessService.wsdl \
  && soapcpp2 -i -I../gsoap_inc/import CAGAccessService.h

cd $SOURCRE_DIR

mkdir -p $BUILD_DIR/$BUILD_TYPE \
  && cd $BUILD_DIR/$BUILD_TYPE \
  && cmake --graphviz=dep.dot \
    -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
    -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
    -DCMAKE_BUILD_NO_EXAMPLES=$BUILD_NO_EXAMPLES \
    $SOURCE_DIR \
  && make $*
#cd $SOURCE_DIR && doxygen

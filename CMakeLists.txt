# root
cmake_minimum_required(VERSION 2.6)

project (caw)

set(BOOST_MIN_VERSION      "104900")
set(BOOST_MIN_VERSION_TEXT "1.49")

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake )

set(CMAKE_CXX_FLAGS "-fPIC")
#set(CMAKE_CXX_FLAGS_DEBUG "-fexceptions -g -Wall -Winline -W -Wwrite-strings -Wno-unused")

MESSAGE( STATUS "PROJECT_SOURCE_DIR: " ${PROJECT_SOURCE_DIR} )
MESSAGE( STATUS "CMAKE_MODULE_PATH: " ${CMAKE_MODULE_PATH} )
MESSAGE( STATUS "CMAKE_SYSTEM_PROCESSOR: " ${CMAKE_SYSTEM_PROCESSOR} )

set(Boost_DETAILED_FAILURE_MSG TRUE)
Find_Package(Boost REQUIRED COMPONENTS system signals filesystem date_time)
Find_Package(Wt REQUIRED)
Find_Package(Corvus REQUIRED)

IF( Boost_VERSION LESS ${BOOST_MIN_VERSION} )
  MESSAGE(FATAL_ERROR "Boost version ${Boost_VERSION} too old, please install ${BOOST_MIN_VERSION_TEXT} or greater!")
ENDIF( Boost_VERSION LESS ${BOOST_MIN_VERSION} )


INCLUDE_DIRECTORIES( ${Wt_INCLUDE_DIR}
                     ${CORVUS_INCLUDE_DIR}
                     ${Boost_INCLUDE_DIRS}
)

add_subdirectory(src)

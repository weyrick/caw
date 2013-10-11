MESSAGE( STATUS "caw src check" )

set(CAW_SRC_FILES
    cawView.cpp
    cawModel.cpp
    SourceView.cpp
    Git.cpp
)

add_executable(caw ${CAW_SRC_FILES} )

TARGET_LINK_LIBRARIES( caw
  ${Wt_DEBUG_LIBRARIES}
  ${Boost_SYSTEM_LIBRARY}
  ${Corvus_LIBRARIES}
)


MESSAGE( STATUS "caw src check" )

set(CAW_SRC_FILES
    mainView.cpp
    sourceTreeModel.cpp
    SourceView.cpp
    Git.cpp
)

set_source_files_properties( ${CAW_SRC_FILES}
                             PROPERTIES COMPILE_FLAGS ${LLVM_COMPILE_FLAGS}
                            )

add_executable(caw ${CAW_SRC_FILES} )

TARGET_LINK_LIBRARIES( caw
  ${Wt_DEBUG_LIBRARIES}
  ${Boost_LIBRARIES}
  ${CORVUS_LIBRARY}
)


# - Find corvus PHP analyzer
#
#  CORVUS_INCLUDE_DIRS - where to find headers.
#  CORVUS_LIBRARIES    - List of libraries.
#  CORVUS_FOUND        - True if found.

#=============================================================================
# Copyright 2006-2009 Kitware, Inc.
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

# Look for the header file.
FIND_PATH(CORVUS_INCLUDE_DIR NAMES corvus/pConfig.h PATHS ENV PATH PATH_SUFFIXES include corvus )

# Look for the library.
find_library(CORVUS_LIBRARY NAMES corvus libcorvus PATHS PATH PATH_SUFFIXES lib)

# handle the QUIETLY and REQUIRED arguments and set CORVUS_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CORVUS
                                  REQUIRED_VARS CORVUS_LIBRARY CORVUS_INCLUDE_DIR
                                  )

# Copy the results to the output variables.
if(CORVUS_FOUND)
  set(CORVUS_LIBRARIES ${CORVUS_LIBRARY})
  set(CORVUS_INCLUDE_DIRS ${CORVUS_INCLUDE_DIR})
else(CORVUS_FOUND)
  message(FATAL_ERROR "Corvus required")
endif(CORVUS_FOUND)

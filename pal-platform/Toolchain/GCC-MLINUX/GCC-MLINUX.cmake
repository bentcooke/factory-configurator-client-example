#################################################################################
#  Copyright 2016, 2017 ARM Ltd.
#  
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#  
#      http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#  mLinux support added April 2018 by myDevices.
#################################################################################

INCLUDE(CMakeForceCompiler)

#This file defines needed options for native GCC compiler.


######### Configure all Options heere ##########
################################################

# TOOLCHAIN EXTENSION
IF(WIN32)
    SET(TOOLCHAIN_EXT ".exe")
ELSE()
    SET(TOOLCHAIN_EXT "")
ENDIF()

# EXECUTABLE EXTENSION
SET (CMAKE_EXECUTABLE_SUFFIX "")


# TOOLCHAIN_DIR AND NANO LIBRARY
#SET(TOOLCHAIN_DIR $ENV{TOOLCHAIN_DIR})
#STRING(REGEX REPLACE "\\\\" "/" TOOLCHAIN_DIR "${TOOLCHAIN_DIR}")

#IF(NOT TOOLCHAIN_DIR)
#    MESSAGE(FATAL_ERROR "***Please set TOOLCHAIN_DIR in envionment variables***")
#ENDIF()

#MESSAGE(STATUS "TOOLCHAIN_DIR: " ${TOOLCHAIN_DIR})

# TARGET_TRIPLET
SET(TARGET_TRIPLET "arm-mlinux-linux-gnueabi")

#SET(TOOLCHAIN_BIN_DIR ${TOOLCHAIN_DIR})
#SET(TOOLCHAIN_INC_DIR ${TOOLCHAIN_DIR}/include)
#SET(TOOLCHAIN_LIB_DIR ${TOOLCHAIN_DIR}/lib)

SET(CMAKE_SYSTEM_NAME Generic)
#SET(CMAKE_SYSTEM_PROCESSOR arm)

CMAKE_FORCE_C_COMPILER(${TARGET_TRIPLET}-gcc GNU)
CMAKE_FORCE_CXX_COMPILER(${TARGET_TRIPLET}-g++ GNU)
SET(CMAKE_ASM_COMPILER ${TARGET_TRIPLET}-gcc)

#SET(CMAKE_OBJCOPY ${TOOLCHAIN_BIN_DIR}/objcopy CACHE INTERNAL "objcopy tool")
# SET(CMAKE_OBJCOPY ${TOOLCHAIN_DIR}/${TARGET_TRIPLET}/bin/objcopy CACHE INTERNAL "objcopy tool")
#SET(CMAKE_OBJDUMP ${TOOLCHAIN_BIN_DIR}/objdump CACHE INTERNAL "objdump tool")

SET(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O3 " CACHE INTERNAL "c compiler flags release")
SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 " CACHE INTERNAL "cxx compiler flags release")   
SET(CMAKE_ASM_FLAGS_RELEASE "${CMAKE_ASM_FLAGS_RELEASE}" CACHE INTERNAL "asm compiler flags release")
SET(CMAKE_EXE_LINKER_FLAGS_RELESE "${CMAKE_EXE_LINKER_FLAGS_RELESE}" CACHE INTERNAL "linker flags release")


SET(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O0 -g" CACHE INTERNAL "c compiler flags debug")
SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g" CACHE INTERNAL "cxx compiler flags debug")
SET(CMAKE_ASM_FLAGS_DEBUG "${CMAKE_ASM_FLAGS_DEBUG} -g" CACHE INTERNAL "asm compiler flags debug")
SET(CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS_DEBUG}" CACHE INTERNAL "linker flags debug")

SET(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O3 " CACHE INTERNAL "c compiler flags release")
SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 " CACHE INTERNAL "cxx compiler flags release")
SET(CMAKE_ASM_FLAGS_RELEASE "${CMAKE_ASM_FLAGS_RELEASE}" CACHE INTERNAL "asm compiler flags release")
SET(CMAKE_EXE_LINKER_FLAGS_RELESE "${CMAKE_EXE_LINKER_FLAGS_RELESE}" CACHE INTERNAL "linker flags release")

SET(TOOLCHAIN_FLAGS_FILE "${CMAKE_SOURCE_DIR}/../pal-platform/Toolchain/GCC-MLINUX/GCC-MLINUX-flags.cmake" CACHE INTERNAL "linker flags file")


########### COMPILER FLAGS  ###########
#
#######################################

########### DEBUG ###########


# Debug specific


# Board specific

# OS specific

# Board specific




########### LINKER FLAGS  ###########
#
#
#####################################

########### DEBUG ###########
# Debug specific
SET(CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS_DEBUG} -g")




#########
if (0)
SET(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_DIR}/${TARGET_TRIPLET} ${EXTRA_FIND_PATH})
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
endif() # comment end
SET(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_DIR}/${TARGET_TRIPLET} ${EXTRA_FIND_PATH})
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)



MESSAGE(STATUS "BUILD_TYPE: " ${CMAKE_BUILD_TYPE})

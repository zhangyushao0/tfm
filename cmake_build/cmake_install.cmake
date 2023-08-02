# Install script for directory: /home/zhangyushao/tfm_2/trusted-firmware-m

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "MinSizeRel")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/arm-none-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/fih/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tools/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/secure_fw/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/tf-m-tests/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/interface/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/platform/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/platform/ext/accelerator/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/outputs/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/outputs" TYPE DIRECTORY FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/bin/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/lib/s_veneers.o")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/lib" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/secure_fw/s_veneers.o")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/client.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/error.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa" TYPE FILE FILES
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/client.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/error.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa_manifest/sid.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa_manifest" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/generated/interface/include/psa_manifest/sid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/tfm_api.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/tfm_ns_interface.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/tfm_api.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/tfm_ns_interface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/tfm_ns_client_ext.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/tfm_ns_client_ext.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/config_tfm.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/include/config_tfm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/config_base.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/config/config_base.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/tfm_psa_call_pack.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/tfm_psa_call_pack.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/framework_feature.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/generated/interface/include/psa/framework_feature.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/internal_trusted_storage.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/storage_common.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa" TYPE FILE FILES
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/internal_trusted_storage.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/storage_common.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/tfm_its_defs.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/tfm_its_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_extra.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_compat.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_client_struct.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_platform.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_sizes.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_struct.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_types.h;/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa/crypto_values.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/psa" TYPE FILE FILES
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_extra.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_compat.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_client_struct.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_platform.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_sizes.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_struct.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_types.h"
    "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/psa/crypto_values.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/tfm_crypto_defs.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/tfm_crypto_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/crypto_keys")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE DIRECTORY FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/crypto_keys")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src/tfm_psa_ns_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/src/tfm_psa_ns_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include/os_wrapper")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/include" TYPE DIRECTORY FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include/os_wrapper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src/os_wrapper")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src" TYPE DIRECTORY FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/src/os_wrapper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src/tfm_its_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/src/tfm_its_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src/tfm_crypto_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/install/interface/src" TYPE FILE FILES "/home/zhangyushao/tfm_2/trusted-firmware-m/interface/src/tfm_crypto_api.c")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

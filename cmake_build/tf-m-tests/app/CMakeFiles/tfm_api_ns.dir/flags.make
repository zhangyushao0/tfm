# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile C with /usr/bin/arm-none-eabi-gcc
C_DEFINES = -DBL1_HEADER_SIZE=0x000 -DBL1_TRAILER_SIZE=0x000 -DBL2_HEADER_SIZE=0x000 -DBL2_TRAILER_SIZE=0x2000 -DCONFIG_TFM_FLOAT_ABI=0 -DCONFIG_TFM_USE_TRUSTZONE -DCRYPTO_HW_ACCELERATOR -DDAUTH_CHIP_DEFAULT -DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=\"/home/zhangyushao/tfm_2/trusted-firmware-m/lib/ext/mbedcrypto/mbedcrypto_config/crypto_config_default.h\" -DMCUBOOT_IMAGE_NUMBER=2 -DPLATFORM_DEFAULT_BL1 -DPLATFORM_DEFAULT_CRYPTO_KEYS -DPLATFORM_NS_NV_COUNTERS=0 -DPS_CRYPTO_AEAD_ALG_GCM -DPS_ENCRYPTION -DSTM32L562xx -DTARGET_CONFIG_HEADER_FILE=\"/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/TFM_FreeRTOS/config_tfm_target.h\" -DTFM_FIH_PROFILE_OFF -DTFM_PARTITION_CRYPTO -DTFM_PARTITION_EXAMPLE -DTFM_PARTITION_IDLE -DTFM_PARTITION_INTERNAL_TRUSTED_STORAGE -DTFM_PARTITION_LOG_LEVEL=TFM_PARTITION_LOG_LEVEL_SILENCE -DTFM_PARTITION_NS_AGENT_TZ

C_INCLUDES = -I/home/zhangyushao/tfm_2/trusted-firmware-m/interface/include -I/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/generated/interface/include -I/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app/../ns_interface -I/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src/app/../ns_interface/ns_client_ext -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/common/stm32l5xx/Device/Include -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/common/stm32l5xx/hal/Inc -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/TFM_FreeRTOS/FreeRTOS/include -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/TFM_FreeRTOS/FreeRTOS/port/GCC -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/./ext -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/./ext/cmsis -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/./ext/common -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/./ext/driver -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/./include -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/TFM_FreeRTOS/include -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/target/stm/common/stm32l5xx/boards -I/home/zhangyushao/tfm_2/trusted-firmware-m/platform/ext/common -I/home/zhangyushao/tfm_2/trusted-firmware-m/config -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/include -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/crypto -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/firmware_update -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/initial_attestation -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/internal_trusted_storage -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/platform -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/protected_storage -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/partitions/example_partition -I/home/zhangyushao/tfm_2/trusted-firmware-m/secure_fw/spm/include -I/home/zhangyushao/tfm_2/trusted-firmware-m/lib/fih/inc

C_FLAGS = -mcpu=cortex-m33+nofp -Os -DNDEBUG -fmacro-prefix-map=/home/zhangyushao/tfm_2/trusted-firmware-m/cmake_build/lib/ext/tfm_test_repo-src=TFM_TEST_REPO_PATH -specs=nano.specs -Wall -Wno-format -Wno-return-type -Wno-unused-but-set-variable -c -fdata-sections -ffunction-sections -fno-builtin -fshort-enums -funsigned-char -mthumb -nostdlib -std=c99 -g -mfloat-abi=soft -Wno-unused-value


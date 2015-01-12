# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

# Assert
TARGET_OTA_ASSERT_DEVICE := ouya,ouya_1_1

# Audio
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true
TARGET_RELEASE_CPPFLAGS += -DMR0_AUDIO_BLOB -DNEEDS_VECTORIMPL_SYMBOLS
USE_LEGACY_AUDIO_POLICY := 1

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/ouya/ouya_1_1/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/ouya/ouya_1_1/bluetooth/vnd_ouya.txt

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := ouya_1_1
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Graphics
BOARD_EGL_CFG := device/ouya/ouya_1_1/egl.cfg
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
USE_OPENGL_RENDERER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/ouya/ouya_1_1
TARGET_KERNEL_CONFIG := cyanogenmod_ouya_defconfig

# Partition
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6304038912
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
TARGET_RECOVERY_FSTAB := device/ouya/ouya_1_1/rootdir/etc/fstab.cardhu

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/ouya/ouya_1_1/releasetools/ouya_ota_from_target_files
TARGET_RELEASETOOL_MAKE_RECOVERY_PATCH_SCRIPT := device/ouya/ouya_1_1/releasetools/ouya_make_recovery_patch

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/bcm4330/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/bcm4330/fw_bcmdhd_apsta.bin"

# SELinux
BOARD_SEPOLICY_DIRS += \
        device/ouya/ouya_1_1/sepolicy

BOARD_SEPOLICY_UNION += \
        file_contexts \
        genfs_contexts \
        bluetooth.te \
        device.te \
        drmserver.te \
        init_shell.te \
        file.te \
        keystore.te \
        lmkd.te \
        mediaserver.te \
        surfaceflinger.te \
        system_app.te \
        system_server.te \
        ueventd.te \
        vold.te

MALLOC_IMPL := dlmalloc

# Copyright (C) 2009 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk

# vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := jewel

# Kernel
BOARD_KERNEL_CMDLINE :=  console=ttyHSL0,115200,n8 androidboot.hardware=jet
BOARD_KERNEL_BASE :=  0x80400000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81800000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_PREBUILT_KERNEL := device/htc/jewel/prebuilt/kernel
#TARGET_KERNEL_CONFIG := jewel_defconfig
#TARGET_KERNEL_SOURCE := kernel/htc/jewel

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Wifi
WIFI_DRIVER_MODULE_NAME          := prima_wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/prima_wlan.ko"

#dev:        size     erasesize name
#mmcblk0p23: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffe00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p35: 4dfffc00 00000200 "system"
#mmcblk0p30: 00140200 00000200 "local"
#mmcblk0p36: 0dfffe00 00000200 "cache"
#mmcblk0p37: 89fffe00 00000200 "userdata"
#mmcblk0p26: 01400000 00000200 "devlog"
#mmcblk0p28: 00040000 00000200 "pdata"
#mmcblk0p38: 27be00000 00000200 "fat"
#mmcblk0p31: 00010000 00000200 "extra"
#mmcblk0p17: 02d00000 00000200 "radio"
#mmcblk0p18: 00a00000 00000200 "adsp"
#mmcblk0p16: 00100000 00000200 "dsps"
#mmcblk0p19: 00500000 00000200 "wcnss"
#mmcblk0p20: 007ffa00 00000200 "radio_config"
#mmcblk0p24: 00400000 00000200 "modem_st1"
#mmcblk0p25: 00400000 00000200 "modem_st2"
#mmcblk0p32: 00040000 00000200 "skylink"
#mmcblk0p33: 00040000 00000200 "cdma_record"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 38

# Recovery
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_ville
#BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/jewel/recovery/graphics.c
#BOARD_USES_MMCUTILS := true
#BOARD_HAS_NO_MISC_PARTITION := true
#BOARD_HAS_NO_SELECT_BUTTON := true

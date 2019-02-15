#
# Copyright (C) 2019 The LineageOS Project
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

# Device path
LOCAL_PATH := device/lenovo/k5fpr

# Build seperate vendor img
TARGET_COPY_OUT_VENDOR := vendor

# Inherit common boardconfig
-include device/lenovo/mt6753-common/BoardConfigCommon.mk

#######################################################################

# Kernel
TARGET_KERNEL_SOURCE := kernel/lenovo/k5fpr
TARGET_KERNEL_CONFIG := k5fpr_defconfig
BOARD_NAME := A7010

# OTA assert
TARGET_OTA_ASSERT_DEVICE := A7010a48,LENOVO,k5fpr,a7010a48

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 409600000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26725888000
BOARD_VENDORIMAGE_PARTITION_SIZE := 526848000
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# DT2W
POWER_FEATURE_DOUBLE_TAP_TO_WAKE := "/sys/lenovo_tp_gestures/tpd_suspend_status"

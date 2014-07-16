#
# Copyright (C) 2012 The CyanogenMod Project
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

USE_CAMERA_STUB := false
BOARD_SKIP_ANDROID_DOC_BUILD := true

# inherit from the proprietary version
-include vendor/htc/endeavoru/BoardConfigVendor.mk

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/nvidia/roth/include

# Recovery remapper
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/nvidia/roth/recovery_keys.c

# Bootloader
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME :=
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_KERNEL_PAGESIZE :=

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
# Architecture - ARM
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t114
TARGET_TEGRA_FAMILY := t11x

TARGET_USE_DTB := true
TARGET_KERNEL_DT_NAME := tegra114-roth
TARGET_BOOTLOADER_BOARD_NAME := P2450
BOOTLOADER_SUPPORTS_DTB := true
BOARD_BUILD_BOOTLOADER := false

# Erratum to avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TFA := true

# Optimization Flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mcpu=cortex-a9 -mfpu=neon
TARGET_GLOBAL_CFLAGS += -fpic -fno-short-enums -pipe -funsafe-math-optimizations -ffinite-math-only
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mcpu=cortex-a9 -mfpu=neon
TARGET_GLOBAL_CPPFLAGS += -fpic -fno-short-enums -pipe -funsafe-math-optimizations -ffinite-math-only
TARGET_EXTRA_CFLAGS += $(call cc-option,  -marm -march=armv7-a)

# Common CFLAGS
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB -DMR0_CAMERA_BLOB -D__ARM_CACHE_LINE_SIZE=32
COMMON_GLOBAL_CFLAGS += -DHTCLOG -DHTC_CAMERA_HARDWARE

# Misc settings
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# WebKit
ENABLE_WEBGL := true

# Graphics
BOARD_EGL_CFG := device/nvidia/roth/egl.cfg
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_GL_VENDOR_EXTENSIONS := true
USE_OPENGL_RENDERER := true

# mediaplayer
BOARD_USES_HW_MEDIAPLUGINS := false
BOARD_USES_HW_MEDIASCANNER := false
BOARD_USES_HW_MEDIARECORDER := false

# ControlMapper
BOARD_HAVE_CONTROLLER_MAPPER := true

# powerhal
BOARD_USES_POWERHAL := true

# Connectivity - Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/nvidia/roth/bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
# compile wpa_supplicant with WEXT and NL80211 support both
CONFIG_DRIVER_WEXT          := y
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b2
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/bcm43241/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_ARG      := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME     := "bcmdhd"

# Sensors
BOARD_USES_GENERIC_INVENSENSE := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 13771997184
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
USE_E2FSPROGS := true

# Skip emmc wipe
BOARD_SUPPRESS_EMMC_WIPE := true

# Dalvik option
DALVIK_ENABLE_DYNAMIC_GC := true

ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/nvidia/roth
TARGET_KERNEL_CONFIG := cyanogenmod_roth_defconfig
TARGET_PREBUILT_KERNEL := device/nvidia/roth/prebuilt/kernel

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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call the vendor files
# $(call inherit-product, vendor/nvidia/roth/roth-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Files needed for boot image
PRODUCT_COPY_FILES += \

#     $(LOCAL_PATH)/init.recovery.roth.rc:recovery/root/init.recovery.roth.rc
#    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
#    $(LOCAL_PATH)/ramdisk/init.roth.rc:root/init.roth.rc \
#    $(LOCAL_PATH)/ramdisk/ueventd.roth.rc:root/ueventd.roth.rc \
#    $(LOCAL_PATH)/ramdisk/init.roth.usb.rc:root/init.roth.usb.rc \
#    $(LOCAL_PATH)/ramdisk/fstab.roth:root/fstab.roth

#PRODUCT_COPY_FILES += \
#    $(NVFLASH_FILES_PATH)/nvflash/P2454_Hynix_4gb_H5TC4G43AFR_450Mhz.bct:flash.bct \
#    $(NVFLASH_FILES_PATH)/nvflash/android_fastboot_dtb_emmc_full.cfg:flash.cfg \
#    $(NVFLASH_FILES_PATH)/nvflash/P2560_Hynix_2GB_H5TC4G63AFR-RDA_450Mhz_r415_v2.cfg:flash_p2560_450Mhz.cfg \
#    $(NVFLASH_FILES_PATH)/nvflash/P2560_Hynix_2GB_H5TC4G63AFR-RDA_450Mhz_r415_v2.bct:flash_p2560_450Mhz.bct \
#    $(NVFLASH_FILES_PATH)/nvflash/eks_nokey.dat:eks.dat \
#    $(NVFLASH_FILES_PATH)/nvflash/nvidia.bmp:nvidia.bmp \
#    $(NVFLASH_FILES_PATH)/nvflash/lowbat.bmp:lowbat.bmp \
#    $(NVFLASH_FILES_PATH)/nvflash/charging.bmp:charging.bmp \
#    $(NVFLASH_FILES_PATH)/nvflash/charged.bmp:charged.bmp \
#    $(NVFLASH_FILES_PATH)/nvflash/fullycharged.bmp:fullycharged.bmp

# Build characteristics setting 
PRODUCT_CHARACTERISTICS := default

# Set non-secure
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0

# Device Naming
PRODUCT_NAME := full_roth
PRODUCT_DEVICE := roth
PRODUCT_BRAND := nvidia
PRODUCT_MODEL := Shield


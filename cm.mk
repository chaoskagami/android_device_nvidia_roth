# Device stuff
$(call inherit-product, device/nvidia/roth/device_roth.mk)


# Release name
PRODUCT_RELEASE_NAME := roth

# Boot animation
#TARGET_BOOTANIMATION_NAME := 1280x720
#TARGET_BOOTANIMATION_PRELOAD := true

# screen info
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280

#
# Setup device specific product configuration.
#
PRODUCT_NAME := nvidia_roth
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := roth
PRODUCT_MODEL := NVIDIA Shield
PRODUCT_MANUFACTURER := NVIDIA
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=roth

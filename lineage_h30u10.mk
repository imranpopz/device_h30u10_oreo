# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/huawei/h30u10/device.mk)

LOCAL_PATH := device/huawei/h30u10

# Common CM stuff
CM_BUILD := h30u10

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_h30u10
PRODUCT_DEVICE := h30u10
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := Huawei H30-U10

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_BOOTANIMATION_HALF_RES := true

# Release name
PRODUCT_RELEASE_NAME := Huawei H30-U10

# Root options
WITH_SU=true

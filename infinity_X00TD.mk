#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Infinity-X stuff.
#TARGET_DISABLE_EPPE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_BLUR := false
WITH_GAPPS := false
TARGET_SHIPS_FULL_GAPPS := false
TARGET_BUILD_GOOGLE_TELEPHONY := false
INFINITY_MAINTAINER := qǝuʞz

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sdm660_64-user 8.1.0 OPM1 1309 release-keys" \
    BuildFingerprint=asus/WW_X00TD/ASUS_X00T_2:8.1.0/OPM1/15.2016.1805.318-20180712:user/release-keys \
    DeviceProduct=ASUS_X00T

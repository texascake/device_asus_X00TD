#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Infinity-X stuff
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common device props
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_QUICK_TAP := false

# Inherit common Infinity-X props
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "rsuntk"
WITH_GAPPS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M2
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=ASUS_X01BD

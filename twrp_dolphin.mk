#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from dolphin_fvd_p1 device
$(call inherit-product, device/dolphin/dolphin_fvd_p1/device.mk)

PRODUCT_DEVICE := dolphin_fvd_p1
PRODUCT_NAME := twrp_dolphin
PRODUCT_BRAND := TVBOX
PRODUCT_MODEL := TVBOX
PRODUCT_MANUFACTURER := dolphin

PRODUCT_GMS_CLIENTID_BASE := android-dolphin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dolphin_fvd_p1-eng 7.0 NRD91N 20230311 test-keys"

BUILD_FINGERPRINT := TVBOX/dolphin_fvd_p1/dolphin-fvd-p1:7.0/NRD91N/20230311:eng/test-keys

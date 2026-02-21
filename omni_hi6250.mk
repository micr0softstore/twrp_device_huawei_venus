#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hi6250 device
$(call inherit-product, device/unknown/hi6250/device.mk)

PRODUCT_DEVICE := hi6250
PRODUCT_NAME := omni_hi6250
PRODUCT_BRAND := hi6250
PRODUCT_MODEL := HUAWEI
PRODUCT_MANUFACTURER := unknown

PRODUCT_GMS_CLIENTID_BASE := android-unknown

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hi6250-user 7.0 NRD90M eng.jenkin.20180725.035207 test-keys"

BUILD_FINGERPRINT := hi6250/hi6250/hi6250:7.0/NRD90M/jenkin07250352:user/test-keys

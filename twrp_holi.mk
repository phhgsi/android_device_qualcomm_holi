#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from holi device
$(call inherit-product, device/qualcomm/holi/device.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := oscar

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oscar
PRODUCT_NAME := twrp_oscar
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2381
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OP535DL1-user 14 RKQ1.211119.001 S.1508b2f-2fc90-2fc98 release-keys" \
    
BUILD_FINGERPRINT := OnePlus/CPH2381/OP535DL1:14/RKQ1.211119.001/S.1508b2f-2fc90-2fc98:user/release-keys

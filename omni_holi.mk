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

PRODUCT_DEVICE := holi
PRODUCT_NAME := twrp_holi
PRODUCT_BRAND := qti
PRODUCT_MODEL := Holi for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="holi-user 12 UKQ1.230924.001 1712928797721 release-keys"

BUILD_FINGERPRINT := qti/holi/holi:12/UKQ1.230924.001/1712928797721:user/release-keys
#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gta4xl device
$(call inherit-product, device/samsung/gta4xl/device.mk)

PRODUCT_DEVICE := gta4xl
PRODUCT_NAME := omni_gta4xl
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P615
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta4xlxx-user 13 TP1A.220624.014 P615XXS5FWD2 release-keys"

BUILD_FINGERPRINT := samsung/gta4xlxx/gta4xl:13/TP1A.220624.014/P615XXS5FWD2:user/release-keys

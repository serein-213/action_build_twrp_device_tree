#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from qssi device
$(call inherit-product, device/qualcomm/qssi/device.mk)

PRODUCT_DEVICE := qssi
PRODUCT_NAME := omni_qssi
PRODUCT_BRAND := qti
PRODUCT_MODEL := qssi system image for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 11 RKQ1.201217.002 1649663342658 release-keys"

BUILD_FINGERPRINT := qti/qssi/qssi:11/RKQ1.201217.002/1649663342658:user/release-keys

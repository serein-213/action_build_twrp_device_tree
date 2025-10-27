#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := qssi
PRODUCT_NAME := twrp_qssi
PRODUCT_BRAND := Qualcomm
PRODUCT_MODEL := qssi
PRODUCT_MANUFACTURER := Qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 11 RKQ1.201217.002 1649663342658 release-keys"

BUILD_FINGERPRINT := qti/qssi/qssi:11/RKQ1.201217.002/1649663342658:user/release-keys

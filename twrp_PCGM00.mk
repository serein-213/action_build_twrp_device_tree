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
PRODUCT_RELEASE_NAME := PCGM00
PRODUCT_DEVICE := PCGM00
PRODUCT_NAME := twrp_PCGM00
PRODUCT_BRAND := oppo
PRODUCT_MODEL := PCGM00
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PCGM00-user 11 RKQ1.201217.002 1649663342658 release-keys"

BUILD_FINGERPRINT := oppo/PCGM00/PCGM00:11/RKQ1.201217.002/1649663342658:user/release-keys

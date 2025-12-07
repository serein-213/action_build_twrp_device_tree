#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/PCGM00

# TWRP: include QCOM decryption helpers
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Copy init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.vold_decrypt.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.vold_decrypt.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.qcom.rc

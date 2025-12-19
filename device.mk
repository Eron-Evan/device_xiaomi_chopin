#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#


# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/$(PRODUCT_DEVICE)/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/$(PRODUCT_DEVICE)/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/$(PRODUCT_DEVICE)/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/$(PRODUCT_DEVICE)/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/$(PRODUCT_DEVICE)/com.android.nfc_extras.xml

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResOverlayChopin \
    SystemUIOverlayChopin \

PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Sku properties
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/sku/,$(TARGET_COPY_OUT_VENDOR)/)

# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc

# Inherit from mt6893-common
$(call inherit-product, device/xiaomi/mt6893-common/mt6893.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/chopin/chopin-vendor.mk)

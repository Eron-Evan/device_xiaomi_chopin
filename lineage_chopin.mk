#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/chopin/device.mk)

# Inherit LineageOS product
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_chopin
PRODUCT_DEVICE := chopin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 21061110AG

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint= POCO/chopin_global/chopin:12/SP1A.210812.016/V14.0.6.0.TKPMIXM:user/release-keys \
    DeviceProduct=chopin \
    SystemName=chopin

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# crDroid flags
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_MATLOG := true
PERF_ANIM_OVERRIDE := true


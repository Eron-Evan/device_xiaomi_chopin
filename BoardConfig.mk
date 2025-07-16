#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/chopin

# Inherit from mt6893-common
include device/xiaomi/mt6893-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 440

# Inherit the proprietary files
include vendor/xiaomi/chopin/BoardConfigVendor.mk

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vince device
AB_OTA_UPDATER := false
$(call inherit-product, device/xiaomi/vince/device.mk)

# Signed
-include vendor/lineage-priv/keys/keys.mk

# Flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_MATLOG := true

# Maintainer username
HORIZON_MAINTAINER := k4ngcaribug

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps flags
WITH_GMS := true
WITH_GMS_VARIANT := core

# Build
BUILD_USERNAME := neophyte
BUILD_HOSTNAME := neophyte_server

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vince
PRODUCT_NAME := lineage_vince
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vince-user 8.1.0 OPM1.171019.019 V11.0.2.0.OEGMIXM release-keys" \
    BuildFingerprint=google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

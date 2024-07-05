#
# Copyright (C) The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common qassa stuff.
$(call inherit-product, vendor/qassa/config/common_full_phone.mk)

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := qassa_rosy
PRODUCT_DEVICE := rosy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# GApps
TARGET_GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosy-user 7.1.2 N2G47H V9.2.3.0.NDAMIEK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/sailfish/sailfish:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

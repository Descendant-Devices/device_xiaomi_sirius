#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/sirius/device.mk)

# Inherit some common PixelExperience stuff.
SUPPORTS_NATIVE_GOOGLE_CAMERA := NO
SUPPORTS_GOOGLE_WALLS := NO
SUPPORTS_GOOGLE_NEW_ASSISTANT := YES
SUPPORTS_GOOGLE_ASSISTANT_EXTRA_RESOURCES := YES
SUPPORTS_PIXEL_SETUP_OVERLAY := YES
PIXEL_SETUP_OVERLAY_TYPE := PIXELONE
TARGET_INCLUDE_OWN_CAMERA := NO
SUPPORTS_FACE_UNLOCK := YES

$(call inherit-product, vendor/descendant/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := descendant_sirius
PRODUCT_DEVICE := sirius
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sirius-user 8.1.0 OPM1.171019.019 V9.5.6.0.OEBCNFA release-keys" \
    PRODUCT_NAME="sirius"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := bluejay
DEVICE_PATH := device/google/bluejay
VENDOR_PATH := vendor/google/bluejay
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

PRODUCT_USE_SCUDO := true

DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

BUILD_BROKEN_DUP_RULES := true

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Rising stuff
RISING_MAINTAINER := Selyn
RISING_CHIPSET := GS101
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORT := true
TARGET_USES_PIXEL_FINGERPRINT := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_IS_PIXEL := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Google Tensor" \
    RisingMaintainer="Selyn"

# GMS
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bluejay-user 15 AP3A.241005.015 12366759 release-keys" \
    BuildFingerprint=google/bluejay/bluejay:15/AP3A.241005.015/12366759:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)

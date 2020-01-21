#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stag stuff
$(call inherit-product, vendor/stag/main.mk)

# Inherit from Realme RMX1801
$(call inherit-product, device/realme/RMX1801/device.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := stag_RMX1801
PRODUCT_DEVICE := RMX1801
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := RMX1801
TARGET_VENDOR_DEVICE_NAME := RMX1801

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="RMX1801" \
    PRODUCT_NAME="RMX1801" \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1.181121.001 eng.root.20200328.174802 release-keys"

BUILD_FINGERPRINT := "google/blueline/blueline:10/QQ3A.200605.001/6392402:user/release-keys"

# Security patch level
PLATFORM_SECURITY_PATCH_OVERRIDE := 2020-03-05
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH_OVERRIDE)
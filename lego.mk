#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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

# Boot
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# device
$(call inherit-product, device/lge/gee/full_gee.mk)

# phone
$(call inherit-product, vendor/lego/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/lego/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gee
PRODUCT_BRAND := LGE
PRODUCT_NAME := lego_gee
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=lego.gee.$(shell date +%m%d%y).$(shell date +%H%M%S)

# Kernel inline build
TARGET_KERNEL_CONFIG := gee_defconfig
TARGET_VARIANT_CONFIG := gee_defconfig
TARGET_SELINUX_CONFIG := gee_defconfig

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/gee/device.mk)
$(call inherit-product-if-exists, vendor/lge/gee/gee-vendor.mk)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=937116 \
    PRODUCT_NAME=mako \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="occam-user 4.4.2 KOT49H 937116 release-keys" \
    BUILD_FINGERPRINT="google/occam/mako:4.4.2/KOT49H/937116:user/release-keys"

# Enable Torch
PRODUCT_PACKAGES += OmniTorch

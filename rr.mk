#
# Copyright 2016 The CyanogenMod Project
# Copyright 2017 The LineageOS Project
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

$(call inherit-product, device/xiaomi/hydrogen/full_hydrogen.mk)

# Inherit some common rr stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := hydrogen
PRODUCT_NAME := rr_hydrogen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Max
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="hydrogen" \
    PRODUCT_NAME="hydrogen" \
    PRIVATE_BUILD_DESC="hydrogen-user 6.0.1 MMB29M V8.2.3.0.MBCCNDL release-keys"
endif

BUILD_FINGERPRINT := Xiaomi/hydrogen/hydrogen:6.0.1/MMB29M/V8.2.3.0.MBCCNDL:user/release-keys

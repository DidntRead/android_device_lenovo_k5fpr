#
# Copyright (C) 2017 The LineageOS Project
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

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from A7010 device
$(call inherit-product, device/lenovo/k5fpr/device_k5fpr.mk)

# Inherit some common LOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_DEVICE := k5fpr
PRODUCT_NAME := lineage_k5fpr
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo A7010a48
PRODUCT_RELEASE_NAME := k5fpr

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=k5fpr \
    PRIVATE_BUILD_DESC="k5fpr-user 6.0 MRA58K A7010a48_S300_190315_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/k5fpr/A7010a48:6.0/MRA58K/RA7010a48_S300_190315_ROW.03151804:user/release-keys \

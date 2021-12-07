#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from enuma device
$(call inherit-product, device/xiaomi/enuma/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_NAME := twrp_enuma
PRODUCT_DEVICE := enuma
PRODUCT_MANUFACTURER := XiaoMi
PRODUCT_BRAND := XiaoMi
PRODUCT_MODEL := XiaoMi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=Xiao Mi PAD Pro5G \
    PRODUCT_NAME=Xiao Mi PAD Pro5G_EEA \
    PRIVATE_BUILD_DESC="Xiao Mi PAD Pro5G-user 11   release-keys"

BUILD_FINGERPRINT := XiaoMi/Xiao Mi PAD Pro5G_EEA/Xiao Mi PAD Pro5G:11/RKQ1.201105.002/2105252217:user/release-keys

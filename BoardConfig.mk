#
# Copyright (C) 2020 The LineageOS Project
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

# inherit from common kltechn
include device/samsung/klte-common/BoardConfig.mk

TARGET_OTA_ASSERT_DEVICE := klte,kltechn,kltexx,kltezm,kltezn

KLTECHN_PATH := device/samsung/kltechn

BUILD_FINGERPRINT := samsung/kltezn/klte:6.0.1/MMB29M/G9006VZNS1CRH1:user/release-keys

# Kernel
TARGET_KERNEL_CONFIG := lineage_kltechn_defconfig

# Fingerprint
include $(COMMON_PATH)/fingerprint/board.mk

# Init
TARGET_INIT_VENDOR_LIB := //$(KLTECHN_PATH):libinit_kltechn
TARGET_RECOVERY_DEVICE_MODULES := libinit_kltechn

# NFC
include $(COMMON_PATH)/nfc/pn547/board.mk

# inherit from the proprietary version
-include vendor/samsung/kltechn/BoardConfigVendor.mk

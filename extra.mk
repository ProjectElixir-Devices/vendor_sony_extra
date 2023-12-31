#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/pdx206-extra

# Dolby Sound
    $(call inherit-product, vendor/sony/pdx206-extra/extra/dolby/dolby.mk)

# 360 Reality Audio Upmix
    $(call inherit-product, vendor/sony/pdx206-extra/extra/threesixtyra/upmix.mk)

# Sony Framework
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/framework/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/framework/system_ext/,$(TARGET_COPY_OUT_SYSTEM_EXT)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/framework/product/,$(TARGET_COPY_OUT_PRODUCT)/)

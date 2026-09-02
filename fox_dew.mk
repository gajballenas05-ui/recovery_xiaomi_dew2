#
# Copyright (C) 2025 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device specific configs
$(call inherit-product, device/xiaomi/dew/device.mk)

# Device identifier
PRODUCT_DEVICE := dew
PRODUCT_NAME := fox_dew
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 15C
PRODUCT_MANUFACTURER := Xiaomi

# maintainer
OF_MAINTAINER := ass_hole

# screen settings
OF_SCREEN_H := 2400
OF_STATUS_H := 87
OF_HIDE_NOTCH := 1
OF_STATUS_INDENT_LEFT := 85
OF_STATUS_INDENT_RIGHT := 85
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0

# other stuff
OF_QUICK_BACKUP_LIST := /boot;/data;
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_DYNAMIC_FULL_SIZE := 9126805504
OF_NO_REFLASH_CURRENT_ORANGEFOX := 1
OF_ENABLE_ALL_PARTITION_TOOLS := 1
OF_USE_GREEN_LED := 0
OF_FLASHLIGHT_ENABLE := 0
OF_FORCE_CASEFOLDING := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 9

# ----- data format stuff -----
# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS := 1
OF_FORCE_DATA_FORMAT_F2FS := 1

# use dmctl to work around problems with formatting the /data partition
OF_USE_DMCTL := 1

# automatically wipe /metadata after data format
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1

# avoid MTP issues after data format
OF_BIND_MOUNT_SDCARD_ON_FORMAT := 1

# don't spam the console with loop errors
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1

# lz4 compression
OF_USE_LZ4_COMPRESSION := 1


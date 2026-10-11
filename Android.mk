#
# Copyright (C) 2018 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal5420-common

ifneq ($(filter exynos5420 exynos5422,$(TARGET_SOC)),)
include $(CLEAR_VARS)
LOCAL_MODULE := sensors.multihal.exynos5.conf
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := _hals.conf
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/sensors
LOCAL_PREBUILT_MODULE_FILE := $(if $(strip $(BOARD_SENSORS_MULTI_HAL_CONFIG)),$(strip $(BOARD_SENSORS_MULTI_HAL_CONFIG)),$(LOCAL_PATH)/hardware/sensors/_hals.conf)
ifeq ($(wildcard $(LOCAL_PREBUILT_MODULE_FILE)),)
$(error Sensor multihal configuration not found: $(LOCAL_PREBUILT_MODULE_FILE))
endif
include $(BUILD_PREBUILT)
endif

ifneq ($(filter chagalllte chagallltetmo chagallwifi ha3g klimtlte klimtltecan klimttd klimtwifi n1awifi n1a3g n2awifi v1a3g v1awifi v2awifi, $(TARGET_DEVICE)),)

  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

endif

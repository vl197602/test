#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common 8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/k2_ul/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/k2_ul/ramdisk/fstab.k2_ul:root/fstab.k2_ul \
    device/htc/k2_ul/ramdisk/init.k2_ul.rc:root/init.k2_ul.rc \
    device/htc/k2_ul/ramdisk/init.k2_ul.usb.rc:root/init.k2_ul.usb.rc \
    device/htc/k2_ul/ramdisk/ueventd.k2_ul.rc:root/ueventd.k2_ul.rc \
    device/htc/k2_ul/ramdisk/remount.k2_ul:root/remount.k2_ul

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/init.qcom.q6_links.sh:/system/etc/init.qcom.q6_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.radio_links.sh:/system/etc/init.qcom.radio_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/k2_ul/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# Vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# Camera
#PRODUCT_PACKAGES += \
#    camera.msm8960

# GPS
#PRODUCT_PACKAGES += \
#    gps.msm8960

# Recovery
# PRODUCT_PACKAGES += \
    # libnetcmdiface

PRODUCT_COPY_FILES +=  vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES +=  vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# Wifi config

PRODUCT_COPY_FILES += \
    device/htc/k2_ul/firmware/fw_bcm4334.bin:/system/etc/firmware/fw_bcm4334.bin \
    device/htc/k2_ul/firmware/fw_bcm4334_apsta.bin:/system/etc/firmware/fw_bcm4334_apsta.bin \
    device/htc/k2_ul/firmware/fw_bcm4334_p2p.bin:/system/etc/firmware/fw_bcm4334_p2p.bin \
    device/htc/k2_ul/firmware/BCM4334B0_002.001.013.0942.0949.hcd:/system/etc/firmware/BCM4334B0_002.001.013.0942.0949

PRODUCT_COPY_FILES += \
    device/htc/k2_ul/modules/bcmdhd.ko:/system/lib/modules//bcmdhd.ko \
    device/htc/k2_ul/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    device/htc/k2_ul/modules/bluetooth-power.ko:/system/lib/modules/bluetooth-power.ko \
    device/htc/k2_ul/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
   device/htc/k2_ul/modules/lcd.ko:/system/lib/modules/lcd.ko \
   device/htc/k2_ul/modules/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
  device/htc/k2_ul/modules/reset_modem.ko:/system/lib/modules/reset_modem.ko

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/k2_ul/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/k2_ul/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/k2_ul/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/k2_ul/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/k2_ul/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/k2_ul/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/k2_ul/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

# Audio config
PRODUCT_COPY_FILES += \
    device/htc/k2_ul/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/k2_ul/dsp/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/device-keypad.kl:system/usr/keylayout/device-keypad.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/sr_touchscreen.kl:system/usr/keylayout/sr_touchscreen.kl \
    $(LOCAL_PATH)/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# MSM8930 firmware
PRODUCT_COPY_FILES += \
 device/htc/k2_ul/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/htc/k2_ul/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    device/htc/k2_ul/firmware/modem_fw.b00:/system/etc/firmware/modem_fw.b00 \
    device/htc/k2_ul/firmware/modem_fw.b01:/system/etc/firmware/modem_fw.b01 \
    device/htc/k2_ul/firmware/modem_fw.b02:/system/etc/firmware/modem_fw.b02 \
    device/htc/k2_ul/firmware/modem_fw.b03:/system/etc/firmware/modem_fw.b03 \
    device/htc/k2_ul/firmware/modem_fw.b04:/system/etc/firmware/modem_fw.b04 \
    device/htc/k2_ul/firmware/modem_fw.b05:/system/etc/firmware/modem_fw.b05 \
    device/htc/k2_ul/firmware/modem_fw.b06:/system/etc/firmware/modem_fw.b06 \
    device/htc/k2_ul/firmware/modem_fw.b07:/system/etc/firmware/modem_fw.b07 \
    device/htc/k2_ul/firmware/modem_fw.b08:/system/etc/firmware/modem_fw.b08 \
    device/htc/k2_ul/firmware/modem_fw.b09:/system/etc/firmware/modem_fw.b09 \
    device/htc/k2_ul/firmware/modem_fw.b10:/system/etc/firmware/modem_fw.b10 \
    device/htc/k2_ul/firmware/modem_fw.b11:/system/etc/firmware/modem_fw.b11 \
    device/htc/k2_ul/firmware/modem_fw.b13:/system/etc/firmware/modem_fw.b13 \
    device/htc/k2_ul/firmware/modem_fw.b14:/system/etc/firmware/modem_fw.b14 \
    device/htc/k2_ul/firmware/modem_fw.b21:/system/etc/firmware/modem_fw.b21 \
    device/htc/k2_ul/firmware/modem_fw.b22:/system/etc/firmware/modem_fw.b22 \
    device/htc/k2_ul/firmware/modem_fw.b23:/system/etc/firmware/modem_fw.b23 \
    device/htc/k2_ul/firmware/modem_fw.b25:/system/etc/firmware/modem_fw.b25 \
    device/htc/k2_ul/firmware/modem_fw.b26:/system/etc/firmware/modem_fw.b26 \
    device/htc/k2_ul/firmware/modem_fw.b29:/system/etc/firmware/modem_fw.b29 \
    device/htc/k2_ul/firmware/modem_fw.mdt:/system/etc/firmware/modem_fw.mdt \
    device/htc/k2_ul/firmware/modem.b00:/system/etc/firmware/modem.b00 \
    device/htc/k2_ul/firmware/modem.b01:/system/etc/firmware/modem.b01 \
    device/htc/k2_ul/firmware/modem.b02:/system/etc/firmware/modem.b02 \
    device/htc/k2_ul/firmware/modem.b03:/system/etc/firmware/modem.b03 \
    device/htc/k2_ul/firmware/modem.b04:/system/etc/firmware/modem.b04 \
    device/htc/k2_ul/firmware/modem.b05:/system/etc/firmware/modem.b05 \
    device/htc/k2_ul/firmware/modem.b06:/system/etc/firmware/modem.b06 \
    device/htc/k2_ul/firmware/modem.b07:/system/etc/firmware/modem.b07 \
    device/htc/k2_ul/firmware/modem.b08:/system/etc/firmware/modem.b08 \
    device/htc/k2_ul/firmware/modem.b09:/system/etc/firmware/modem.b09 \
    device/htc/k2_ul/firmware/modem.b10:/system/etc/firmware/modem.b10 \
    device/htc/k2_ul/firmware/modem.mdt:/system/etc/firmware/modem.mdt \
    device/htc/k2_ul/firmware/q6.b00:/system/etc/firmware/q6.b00 \
    device/htc/k2_ul/firmware/q6.b01:/system/etc/firmware/q6.b01 \
    device/htc/k2_ul/firmware/q6.b03:/system/etc/firmware/q6.b03 \
    device/htc/k2_ul/firmware/q6.b04:/system/etc/firmware/q6.b04 \
    device/htc/k2_ul/firmware/q6.b05:/system/etc/firmware/q6.b05 \
    device/htc/k2_ul/firmware/q6.b06:/system/etc/firmware/q6.b06 \
    device/htc/k2_ul/firmware/q6.mdt:/system/etc/firmware/q6.mdt

# Audio config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

# GPS config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y \
    persist.gps.qmienabled=true \
    ro.baseband.arch=msm \
    ro.telephony.ril_class=HTCQualcommRIL \
    ro.telephony.ril.v3=skipradiooff

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi 
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/k2_ul/k2_ul-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := k2_ul
PRODUCT_NAME := k2_ul
PRODUCT_BRAND := htc
PRODUCT_MODEL := One SV 
PRODUCT_MANUFACTURER := HTC

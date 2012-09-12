#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
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

VENDOR=lge
DEVICE=p350

rm -rf ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars

# Sensors
adb pull /system/lib/hw/sensors.pecan.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/sensors.pecan.so
adb pull /system/lib/hw/lights.pecan.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/bin/ami304d ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# EGL
adb pull /system/lib/egl/egl.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/egl.cfg
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libEGL_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv2_adreno200.so
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libq3dtools_adreno200.so
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsl.so
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pm4.fw

# Camera
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Wifi
adb pull /system/etc/wl/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc-apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc-mfgtest.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl

# Audio
adb pull /system/lib/liba2dp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liba2dp.so
adb pull /system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libaudioeq.so

# LGE services
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# rmt_storage
adb pull /system/bin/rmt_storage ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# port-bridge
adb pull /system/bin/port-bridge ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# wipeirface
adb pull /system/bin/wiperiface ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# Touchscreen firmware updater
adb pull /system/bin/tsdown ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/etc/MELFAS_FIRM.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc

# netmgr
adb pull /system/bin/netmgrd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/lib/libdsutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnetmgr.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# RIL
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qc-1.so
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib//liboncrpc.so
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsm.so
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqueue.so
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdiag.so
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libauth.so
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcm.so
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnv.so
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpbmlib.so
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwms.so
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwmsts.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgstk_exp.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qcril-hook-oem.so
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboem_rapi.so
adb pull /system/lib/libsnd.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libsnd.so
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqmi.so
adb pull /system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdll.so
adb pull /system/lib/liblgeat.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgeat.so
adb pull /system/lib/liblgdrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgdrm.so
adb pull /system/lib/liblgdrmwbxml.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgdrmwbxml.so 
adb pull /system/lib/liblgerft.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgerft.so
adb pull /system/lib/libbcmwl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libbcmwl.so
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdss.so
adb pull /system/bin/rild ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/rild
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril.so
adb pull /system/lib/libloc-rpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libloc-rpc.so
adb pull /system/lib/libloc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libloc.so
adb pull /system/lib/libcommondefs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcommondefs.so

# OMX
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxCore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Bluetooth
adb pull /system/bin/BCM43291A0_003.001.013.0060.Pecan.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

#Keycharacter Map - there may be two version - pecan_keypad.kcm.bin is for stock ROM and touch_mcs7000.kcm.bin for CM builds so one of this pulls will fail
adb pull /system/usr/keychars/pecan_keypad.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/touch_mcs7000.kcm.bin
adb pull /system/usr/keychars/touch_mcs7000.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/touch_mcs7000.kcm.bin

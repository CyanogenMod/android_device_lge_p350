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

DEVICE=p350
MANUFACTURER=lge

#TODO: we should use somehow absolute paths to the root of source tree - so we could use this command at every point of the tree
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars

# Sensors
adb pull /system/lib/hw/sensors.pecan.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/lights.pecan.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/bin/ami304d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# 3D
adb pull /system/lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

#2D
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw/gralloc.default.so
adb pull /system/lib/hw/gralloc.pecan.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw/gralloc.pecan.so

# Camera
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Wifi
adb pull /system/etc/wl/nvram.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc-apsta.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
adb pull /system/etc/wl/rtecdc-mfgtest.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl

# Audio
adb pull /system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# LGE services
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# rmt_storage
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# port-bridge
adb pull /system/bin/port-bridge ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# wipeirface
adb pull /system/bin/wiperiface ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# Touchscreen firmware updater
adb pull /system/bin/tsdown ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/etc/MELFAS_FIRM.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc

# netmgr
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# RIL
adb pull /system/lib/libril-qc-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libwmsts.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboem_rapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsnd.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdll.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgeat.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgdrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgdrmwbxml.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liblgerft.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libbcmwl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdss.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libloc-rpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libloc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcommondefs.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# OMX
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxCore.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Bluetooth
adb pull /system/bin/BCM43291A0_003.001.013.0060.Pecan.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

#Keycharacter Map - there may be two version - pecan_keypad.kcm.bin is for stock ROM and touch_mcs7000.kcm.bin for CM builds so one of this pulls will fail
adb pull /system/usr/keychars/pecan_keypad.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars/touch_mcs7000.kcm.bin
adb pull /system/usr/keychars/touch_mcs7000.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars/touch_mcs7000.kcm.bin

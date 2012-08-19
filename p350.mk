# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p350/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/p350/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/init.pecan.rc:root/init.pecan.rc \
    $(LOCAL_PATH)/files/ueventd.pecan.rc:root/ueventd.pecan.rc \
    $(LOCAL_PATH)/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    #$(LOCAL_PATH)/files/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
    #$(LOCAL_PATH)/files/init.qcom.rc:root/init.qcom.rc \
    #$(LOCAL_PATH)/files/init.pecan.rc:root/init.pecan.rc \

#Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/touch_mcs7000.kl:system/usr/keylayout/touch_mcs7000.kl \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    $(LOCAL_PATH)/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

# SD Card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/etc/vold.fstab:system/etc/vold.fstab \


# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/files/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

######################PROPERIATY FILES######################
# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/lib/hw/sensors.pecan.so:system/lib/hw/sensors.pecan.so \
    vendor/lge/p350/proprietary/lib/hw/lights.pecan.so:system/lib/hw/lights.pecan.so \
    vendor/lge/p350/proprietary/bin/ami304d:system/bin/ami304d \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/p350/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/p350/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/p350/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/p350/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/p350/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/p350/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/p350/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/p350/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \

# Wifi
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/p350/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/p350/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/p350/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    #vendor/lge/p350/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/qmuxd:system/bin/qmuxd \

# rmt_storage
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/rmt_storage:system/bin/rmt_storage \

# port-bridge
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/port-bridge:system/bin/port-bridge \

# wipeirface
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/wiperiface:system/bin/wiperiface \

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/tsdown:system/bin/tsdown \
    vendor/lge/p350/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \

# netmgr
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/p350/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/p350/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/p350/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/p350/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/p350/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/p350/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/p350/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/p350/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/p350/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/p350/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/p350/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/p350/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/p350/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/p350/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/p350/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/p350/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/p350/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/p350/proprietary/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/p350/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/p350/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/p350/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \
    vendor/lge/p350/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/p350/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \
    vendor/lge/p350/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/p350/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/p350/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/p350/proprietary/bin/rild:system/bin/rild \
    vendor/lge/p350/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/p350/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
    vendor/lge/p350/proprietary/lib/libloc.so:system/lib/libloc.so \
    vendor/lge/p350/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \

# OMX
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/p350/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/p350/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/p350/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/p350/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/p350/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/p350/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/p350/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/p350/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/p350/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/p350/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/p350/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/p350/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/p350/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/p350/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/p350/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/p350/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/p350/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/lge/p350/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/bin/BCM43291A0_003.001.013.0060.pecan.hcd:system/bin/BCM43291A0_003.001.013.0060.pecan.hcd \

# Key Character Map
PRODUCT_COPY_FILES += \
    vendor/lge/p350/proprietary/usr/keychars/touch_mcs6000.kcm.bin:system/usr/keychars/touch_mcs6000.kcm.bin \

PRODUCT_PACKAGES += \
    librs_jni \
    libaudio \
    libcamera \
    lights.p350 \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    com.android.future.usb.accessory \
    LiveWallpapers \
    LiveWallpapersPicker \
    FM \
    gps.p350 \
    gralloc.pecan \
    bash \
    dexpreopt \
    hwaddrs \

PRODUCT_LOCALES += ldpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := p350
PRODUCT_DEVICE := p350
PRODUCT_MODEL := LG Optimus Me

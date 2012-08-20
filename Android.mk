#LOCAL_PATH := $(my-dir)

#ifeq ($(TARGET_DEVICE),p350)
   # subdir_makefiles := \
    #    $(LOCAL_PATH)/libcamera/Android.mk \
	#$(LOCAL_PATH)/libaudio/Android.mk \
#        $(LOCAL_PATH)/brcm_patchram_plus/Android.mk
   # include $(subdir_makefiles)
  #include $(call all-named-subdir-makefiles, libaudio libcamera)

#endif
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),p350)
include $(call first-makefiles-under,$(call my-dir))
endif

ifeq ($(TARGET_QCOM_AUDIO_VARIANT),msm7x30)

AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
    include $(AUDIO_HW_ROOT)/alsa_sound/Android.mk
endif

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
    include $(AUDIO_HW_ROOT)/libalsa-intf/Android.mk
endif
ifeq ($(call is-board-platform,msm7x30),true)
    include $(AUDIO_HW_ROOT)/msm7x30/Android.mk
endif

endif

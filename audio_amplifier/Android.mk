LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
    libbase \
    liblog \
    libcutils \
    libtinyalsa \
    libtinycompress \
    libaudioroute \
    libdl \
    libaudioutils \
    libhwbinder \
    libhidlbase \
    libprocessgroup \
    libutils \
		audio.primary.sm6150

LOCAL_C_INCLUDES += \
    external/tinyalsa/include \
		hardware/libhardware/include \
    external/tinycompress/include \
    system/media/audio_utils/include \
    $(call include-path-for, audio-route) \
    $(call include-path-for, audio-effects) \
    $(call project-path-for,qcom-audio)/hal \
    $(call project-path-for,qcom-audio)/hal/msm8974 \
    $(call project-path-for,qcom-audio)/hal/audio_extn \
    $(call project-path-for,qcom-audio)/hal/voice_extn

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/techpack/audio/include
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES := audio_amplifier.c

LOCAL_MODULE := audio_amplifier.sm6150
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)

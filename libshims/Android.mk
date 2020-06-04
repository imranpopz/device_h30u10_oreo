LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    bionic.cpp \
    xlog.c \
    ui.cpp \
    icu.c \
    camera.cpp \
    buffer.cpp

LOCAL_SHARED_LIBRARIES := libbinder libui libgui libcutils libutils libc liblog libicuuc libicui18n  libstagefright_foundation
LOCAL_MODULE := libshim
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

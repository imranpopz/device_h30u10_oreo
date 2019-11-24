LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	ril.cpp \
	GraphicBuffer.cpp \
	icu55.c \
	bionic.cpp \
	wvm.cpp \
	atomic.cpp


LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui \
				libicuuc libicui18n libcrypto libmedia libstagefright_foundation

LOCAL_MODULE := libshim
LOCAL_MODULE_TAGS := optional
LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++1y
# LOCAL_SANITIZE := integer
LOCAL_CPPFLAGS += -Wno-exit-time-destructors
LOCAL_CPPFLAGS += -Wno-global-constructors
LOCAL_CPPFLAGS += -Wno-c++98-compat-pedantic
LOCAL_CPPFLAGS += -Wno-four-char-constants
LOCAL_CPPFLAGS += -Wno-padded
include $(BUILD_SHARED_LIBRARY)

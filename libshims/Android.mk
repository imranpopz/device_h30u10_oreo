LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# /system/lib/librilmtk.so ( _ZN7android6Parcel13writeString16EPKtj )
LOCAL_SRC_FILES := ril.cpp
LOCAL_SHARED_LIBRARIES := libbinder

# /system/lib/libcam.utils.so ( _ZN7android13GraphicBufferC1Ejjij )
LOCAL_SRC_FILES := GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES := libui libbinder libgui
LOCAL_C_INCLUDES := frameworks/native/include

# /system/bin/mtk_agpsd ( UCNV_FROM_U_CALLBACK_STOP_55 )
LOCAL_SRC_FILES += icu55.c
LOCAL_SHARED_LIBRARIES += libicuuc

# /system/lib/libmtkjpeg.so ( __pthread_gettid )
LOCAL_SRC_FILES += bionic.cpp
LOCAL_SHARED_LIBRARIES += libc

# /system/vendor/lib/libwvm.so ( _ZN7android16MediaBufferGroupC1Ev , _ZNK7android11MediaSource11ReadOptions9getSeekToEPxPNS1_8SeekModeE , _ZNK7android11MediaSource11ReadOptions14getNonBlockingEv , _ZN7android16MediaBufferGroup14acquire_bufferEPPNS_11MediaBufferEb
# LOCAL_SRC_FILES += wvm.cpp
# LOCAL_SHARED_LIBRARIES += libmedia libstagefright_foundation

# /system/lib/libcam_utils.so ( android_atomic_acquire_load )
LOCAL_SRC_FILES := atomic.cpp
LOCAL_SHARED_LIBRARIES := libcutils

LOCAL_MODULE := libshim
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

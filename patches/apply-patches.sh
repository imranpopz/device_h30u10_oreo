#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/huawei/h30u10/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/huawei/h30u10/patches/0004-libsuspend-readd-earlysuspend.patch
patch -p1 < ../../device/huawei/h30u10/patches/0004-libnetutils-add-MTK-bits-ifc_ccmni_md_cfg.patch
patch -p1 < ../../device/huawei/h30u10/patches/0001-liblog-Add-__xlog_buf_printf.patch
cd ../..
cd hardware/libhardware
patch -p1 < ../device/huawei/h30u10/patches/0001-Move-get_microphones-to-bottom-cuz-our-audio-doesn-t.patch
cd ../..
cd bionic
patch -p1 < ../device/huawei/h30u10/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..
cd hardware/interfaces
patch -p1 < ../../device/huawei/h30u10/patches/sensor.patch
cd ../..

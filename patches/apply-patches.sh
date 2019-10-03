#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/huawei/h30u10/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/huawei/h30u10/patches/earlysuspend.patch
#patch -p1 < ../../device/huawei/h30u10/patches/0004-libnetutils-add-MTK-bits-ifc_ccmni_md_cfg.patch
#patch -p1 < ../../device/huawei/h30u10/patches/0012-PATCH-xen0n-some-MTK-services-e.g.-ril-daemon-mtk-re.patch
cd ../..
cd bionic
patch -p1 < ../device/huawei/h30u10/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..


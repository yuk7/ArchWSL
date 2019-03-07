#!/bin/bash

ARCH="x86_64"
ROOTFS_VER="19022800"
ROOTFS_FN="rootfs.tar.gz"
ROOTFS_URL="https://github.com/yuk7/ArchWSL-FS/releases/download/${ROOTFS_VER}/${ROOTFS_FN}"

LNCR_BLD="19030700"
LNCR_ZIP="icons.zip"
LNCR_FN="Arch.exe"
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"

PAC_PKGS="bzip2 coreutils diffutils gawk gcc-libs gettext grep gzip inetutils iproute2 iputils less man-db man-pages nano sed sudo tar vi vim wget which"

if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi



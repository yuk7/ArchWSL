#!/bin/bash

ARCH="x86_64"
ROOTFS_VER="19030700"
ROOTFS_FN="rootfs.tar.gz"
ROOTFS_URL="https://github.com/yuk7/ArchWSL-FS/releases/download/${ROOTFS_VER}/${ROOTFS_FN}"

LNCR_BLD="19031900"
LNCR_ZIP="icons.zip"
LNCR_FN="Arch.exe"
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"


if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi



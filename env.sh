#!/bin/bash

ARCH=x86_64
ROOTFS_VER=2017.12.01
ROOTFS_FN=archlinux-bootstrap-${ROOTFS_VER}-${ARCH}.tar.gz
ROOTFS_URL=http://mirrors.kernel.org/archlinux/iso/${ROOTFS_VER}/${ROOTFS_FN}

GLIBC_BLD=17101600
GLIBC_VER=2.26-4
GLIBC_FN=glibc-wsl-${GLIBC_VER}-${ARCH}.pkg.tar.xz
GLIBC_URL=https://github.com/yuk7/arch-prebuilt/releases/download/${GLIBC_BLD}/${GLIBC_FN}

FRTCP_BLD=17101600
FRTCP_VER=1.21-2
FRTCP_FN=fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.xz
FRTCP_URL=https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}

LNCR_BLD=17120400
LNCR_ZIP=icons.zip
LNCR_FN=Arch.exe
LNCR_URL=https://github.com/yuk7/WSL-DistroLauncher/releases/download/${LNCR_BLD}/${LNCR_ZIP}

if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi



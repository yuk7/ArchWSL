#!/bin/bash

ARCH="x86_64"
BASE_VER="2018.08.01"
BASE_FN="archlinux-bootstrap-${BASE_VER}-${ARCH}.tar.gz"
BASE_URL="http://mirrors.kernel.org/archlinux/iso/${BASE_VER}/${ROOTFS_FN}"

FRTCP_BLD="18082100"
FRTCP_VER="1.23-1"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.xz"
FRTCP_URL="https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}"

LNCR_BLD="18080900"
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



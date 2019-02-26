ARCH="x86_64"
ISO_VER="20180604"
ISO_ED="base"
ISO_INIT="runit"
ISO_FN="artix-${ISO_ED}-${ISO_INIT}-${ISO_VER}-${ARCH}.iso"
ISO_URL="https://mirrors.dotsrc.org/artix-linux/iso/${ISO_FN}"

FRTCP_BLD="18082100"
FRTCP_VER="1.23-1"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.xz"
FRTCP_URL="https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}"

LNCR_BLD="19022600"
LNCR_ZIP="icons.zip"
LNCR_FN="Artix.exe"
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"

PAC_PKGS="bash bzip2 coreutils diffutils file filesystem findutils gawk gcc-libs gettext glibc grep gzip inetutils iproute2 iputils less licenses logrotate man-db man-pages vim pacman psmisc sed shadow sysfsutils tar util-linux which runit"

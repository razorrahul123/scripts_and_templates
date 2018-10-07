#!/bin/bash

# colors
export TERM=xterm

    red=$(tput setaf 1) # red
    grn=$(tput setaf 2) # green
    blu=$(tput setaf 4) # blue
    cya=$(tput setaf 6) # cyan
    txtrst=$(tput sgr0) # Reset

# arch
export ARCH=arm64
export SUBARCH=arm64

# toolchain path
export CROSS_COMPILE=~/kernel/aarch64-linux-android-4.9/bin/aarch64-linux-android-

# user and host
export KBUILD_BUILD_USER=theimpulson
export KBUILD_BUILD_HOST=aospextended

# cleanup
make clean && make mrproper
echo -e ${cya}"Cleaned"${txtrst};

# compile
make PL2_defconfig
make -j8

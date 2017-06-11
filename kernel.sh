#!/bin/bash


export PATH="/usr/lib/ccache:$PATH"
export CCACHE_DIR=/home/rick/.ccache


export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/crosstool/arm-cortex_a7-UBERTC_8/bin/arm-eabi-

make mrproper
touch .scmversion
make CC='ccache gcc' g800f_custom_defconfig
make -j4


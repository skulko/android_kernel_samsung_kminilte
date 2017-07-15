#!/bin/bash

export USE_CCACHE=1
export CCACHE_DIR=~/.ccache

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/crosstool/arm-cortex_a7-UBERTC_8/bin/arm-eabi-

make mrproper
touch .scmversion
make g800f_custom_defconfig
make -j4


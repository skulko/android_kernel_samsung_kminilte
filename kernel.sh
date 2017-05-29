#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/crosstool/arm-cortex_a7-UBERTC_7/bin/arm-eabi-


make mrproper
touch .scmversion
make g800f_custom_defconfig
make -j4

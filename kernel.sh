#!/bin/bash

export USE_CCACHE=1
export CCACHE_DIR=~/.ccache

# Colors
RED="\033[01;31m"

# what the script is doing to the user
function echoText() {
    BLUE="\033[1;94m"
    RST="\033[0;33m"

    echo -e ${BLUE}
    echo -e "====$( for i in `seq ${#1}`; do echo -e "=\c"; done )===="
    echo -e "==  ${1}  =="
    echo -e "====$( for i in `seq ${#1}`; do echo -e "=\c"; done )===="
    echo -e ${RST}
}

# Creates a new line
function newLine() {
    echo -e ""
}

##################
#                #
#  SCRIPT START  #
#                #
##################
#

# Configure build
export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/crosstool/arm-cortex_a7-UBERTC_8/bin/arm-eabi-

# Show ASCII TEXT
echo -e ${RED}; newLine
echo -e "================================================"; newLine; newLine
echo " __                       _          _  _          ";
echo "/ _\ _ __    ___    ___  | | __ ___ (_)| |_  _   _ ";
echo "\ \ | '_ \  / _ \  / _ \ | |/ // __|| || __|| | | |";
echo "_\ \| |_) || (_) || (_) ||   <| (__ | || |_ | |_| |";
echo "\__/| .__/  \___/  \___/ |_|\_\\___||_| \__| \__, |";
echo "    |_|                                      |___/ ";
echo "                                                   ";
echo "                                _             __   ";
echo "  /\ /\ ___  _ __  _ __    ___ | |         /\ \ \  ";
echo " / //_// _ \| '__|| '_ \  / _ \| | _____  /  \/ /  ";
echo "/ __ \|  __/| |   | | | ||  __/| ||_____|/ /\  /   ";
echo "\/  \/ \___||_|   |_| |_| \___||_|       \_\ \/    ";
echo "                                                   "; 
echo -e "================================================"; newLine; newLine


# Start tracking time
echoText "BUILD SCRIPT STARTING AT $(date +%D\ %r)"

DATE_START=$(date +"%s")

echoText "CLEANING UP"
make mrproper
touch .scmversion
echoText "CREATING CONFIG"
make g800f_custom_defconfig 
echoText "STARTING BUILD"
make -j4


DATE_END=$(date +"%s")
DIFF=$((${DATE_END} - ${DATE_START}))
echo -e ${RED}; newLine
echo -e ${RED}"SCRIPT DURATION: $((${DIFF} / 60)) MINUTES AND $((${DIFF} % 60)) SECONDS"

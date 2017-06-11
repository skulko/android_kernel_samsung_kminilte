#!/bin/bash

rm /home/rick/android_dev/G800F-Kernel_Stuff/AnyKernel2/zImage
rm /home/rick/android_dev/G800F-Kernel_Stuff/AnyKernel2/SpookcityKernel.zip
cp -v /home/rick/android_dev/G800F-Kernel_Stuff/kernel_samsung_kminilte/arch/arm/boot/zImage /home/rick/android_dev/G800F-Kernel_Stuff/AnyKernel2
cd /home/rick/android_dev/G800F-Kernel_Stuff/AnyKernel2
zip -r9 SpookcityKernel * -x README UPDATE-AnyKernel2.zip

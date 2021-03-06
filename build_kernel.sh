#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-

mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8952_sec_j7xlte_chn_defconfig msm8952_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig SELINUX_LOG_DEFCONFIG=selinux_log_defconfig DMVERITY_DEFCONFIG=dmverity_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

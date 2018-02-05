#!/bin/bash
# Build new kernel with realsense kernel modules.

set -e

if [ $(ls /dev/video* | wc -l) -ne 0 ];
then
  echo -e "\e[32m"
  read -p "Remove all RealSense cameras attached. Hit any key when ready"
  echo -e "\e[0m"
fi

# Get the required tools and headers to build the kernel
sudo apt-get install linux-headers-generic build-essential git -y

git submodule update --init --recursive
cd buildJetsonTX2Kernel && \
sudo ./getKernelSource.sh && \
sudo ./makeKernel.sh && \
sudo ./copyImage.sh

echo -e "You will need to reboot to load the new kernel"

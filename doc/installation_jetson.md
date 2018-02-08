# Jetson TX2 Installation

**NOTE: Intel does not officially support the Jetson line of devices. Furthermore, there are several [known issues](../../../issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20jetson) with running librealsense on jetson.**<br/><br/>
To install librealsense on the Jetson TX2 Developer Kit, Follow the [regular instructions](installation.md) for Ubuntu 16.04.

A couple things of note:
1. Make sure you are running the [latest L4T release](https://developer.nvidia.com/embedded/linux-tegra) as published by NVIDIA.
2. The `./scripts/patch-realsense-ubuntu-xenial.sh` has been modified in this branch `jetson-tx2-install` to use a [the Aivero fork of JetsonHack's buildJetsonTX2Kernel](https://github.com/aivero/buildJetsonTX2Kernel/tree/fix/jetson_tx2). It downloads the BSP v28 from NVIDIA and patches the kernel.

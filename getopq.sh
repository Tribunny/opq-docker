#! /bin/bash

platform=$1

apk add --no-cache curl tar

if [[ "$platform" = "linux/amd64" ]]
then
    curl -LO https://ghproxy.com/https://github.com/opq-osc/OPQ/releases/download/v6.0.20/OPQBot_6.0.20_linux_amd64.tar.gz
    tar -xvf OPQBot_6.0.20_linux_amd64.tar.gz
    mv OPQBot_6.0.20_linux_amd64 OPQBot
elif [[ "$platform" = "linux/arm/v7" ]]
then
    curl -LO https://ghproxy.com/https://github.com/opq-osc/OPQ/releases/download/v6.0.20/OPQBot_6.0.20_linux_arm.tar.gz
    tar -xvf OPQBot_6.0.20_linux_arm.tar.gz
    mv OPQBot_6.0.20_linux_arm OPQBot
elif [[ "$platform" = "linux/arm64" ]]
then
    curl -LO https://ghproxy.com/https://github.com/opq-osc/OPQ/releases/download/v6.0.20/OPQBot_6.0.20_linux_arm64.tar.gz
    tar -xvf OPQBot_6.0.20_linux_arm64.tar.gz
    mv OPQBot_6.0.20_linux_arm64 OPQBot
else
    echo "Platform Not Available !"
fi

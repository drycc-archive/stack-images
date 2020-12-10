#!/usr/bin/env bash

set -euo pipefail

# Redirect stderr to stdout since tracing/apt-get/dpkg spam it for things that aren't errors.
exec 2>&1
set -x

# x86/amd64
sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
# arm/arm64
sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

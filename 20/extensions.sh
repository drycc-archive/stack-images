#!/usr/bin/env bash

set -euo pipefail

# Redirect stderr to stdout since tracing/apt-get/dpkg spam it for things that aren't errors.
exec 2>&1
set -x

export DEBIAN_FRONTEND=noninteractive

# Fix libffi version
ln -s /usr/lib/$(uname -m)-linux-gnu/libffi.so.7 /usr/lib/$(uname -m)-linux-gnu/libffi.so.6

# Install packages
apt-get update -qq
apt-get install -y --no-install-recommends \
    nginx \
    binutils \
    gdal-bin \
    libsqlite3-0

#!/usr/bin/env bash

set -euo pipefail

# Redirect stderr to stdout since tracing/apt-get/dpkg spam it for things that aren't errors.
exec 2>&1
set -x

export DEBIAN_FRONTEND=noninteractive

# Install packages
apt-get update -qq

apt-get install -y --no-install-recommends \
        aptitude \
        libproj-dev \
        libsqlite3-dev

# Fix postgresql-server-dev-13 build error
{
    apt-get install -y --no-install-recommends postgresql-server-dev-13
} || {
    apt-get install -fy --no-install-recommends
}
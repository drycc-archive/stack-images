#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

RUNTIME_IMAGE="${DRYCC_REGISTRY}drycc/stack-images:${VERSION}"
BUILD_IMAGE="${DRYCC_REGISTRY}drycc/stack-images:${VERSION}-build"

echo "Build image: ${RUNTIME_IMAGE}"
docker build -t "${RUNTIME_IMAGE}" -f "${VERSION}/Dockerfile" "${VERSION}"
docker push "${RUNTIME_IMAGE}"

echo "Build image: ${RUNTIME_IMAGE}"
docker build -t "${BUILD_IMAGE}" -f "${VERSION}/build/Dockerfile" "${VERSION}/build"
docker push "${BUILD_IMAGE}"

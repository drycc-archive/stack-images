#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

PLATFORM=${PLATFORM:-"linux/amd64,linux/arm64"}
RUNTIME_IMAGE="${DRYCC_REGISTRY}/drycc/stack-images:${VERSION}"
BUILD_IMAGE="${DRYCC_REGISTRY}/drycc/stack-images:${VERSION}-build"


function build() {
  echo "Build image: ${RUNTIME_IMAGE}"
  docker build -t "${RUNTIME_IMAGE}" -f "${VERSION}/Dockerfile" "${VERSION}"
  docker push "${RUNTIME_IMAGE}"

  echo "Build image: ${BUILD_IMAGE}"
  docker build -t "${BUILD_IMAGE}" -f "${VERSION}/build/Dockerfile" "${VERSION}/build"
  docker push "${BUILD_IMAGE}"
}

function buildx() {
  echo "Buildx image: ${RUNTIME_IMAGE}"
  docker buildx build --platform ${PLATFORM} -t "${RUNTIME_IMAGE}" -f "${VERSION}/Dockerfile" "${VERSION}" --push

  echo "Buildx image: ${BUILD_IMAGE}"
  docker buildx build --platform ${PLATFORM} -t "${BUILD_IMAGE}" -f "${VERSION}/build/Dockerfile" "${VERSION}/build" --push
}

"$@"

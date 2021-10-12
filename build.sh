#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

PLATFORM=${PLATFORM:-"linux/amd64,linux/arm64"}
IMAGE="${DRYCC_REGISTRY}/drycc/stack-images:${IMAGE_TAG}"


function build() {
  echo "Build image: ${IMAGE}"
  docker build -t "${IMAGE}" -f "${VERSION}/Dockerfile" "${VERSION}"
  docker push "${IMAGE}"
}

function buildx() {
  echo "Buildx image: ${IMAGE}"
  docker buildx build --platform ${PLATFORM} -t "${IMAGE}" -f "${VERSION}/Dockerfile" "${VERSION}" --push
}

"$@"

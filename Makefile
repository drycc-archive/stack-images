VERSION ?= $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
REGISTRY ?= docker.io/
IMAGE_PREFIX ?= drycc
IMAGE := ${REGISTRY}${IMAGE_PREFIX}/stack-images:${TAG}

info:
	@echo "REGISTRY: ${REGISTRY}"
	@echo "VERSION:  ${VERSION}"
	@echo "IMAGE:    ${IMAGE}"

build:
	docker build -t ${IMAGE} rootfs

push: build
	docker push ${IMAGE}

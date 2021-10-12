# stack-images

## build

Use docker build

```
export VERSION=18
export IMAGE_TAG=18
export DRYCC_REGISTRY=docker.io
./build.sh build

export VERSION=20
export IMAGE_TAG=20
export DRYCC_REGISTRY=docker.io
./build.sh build
```

## buildx

Use docker buildx

```
export VERSION=18
export IMAGE_TAG=18
export DRYCC_REGISTRY=docker.io
./build.sh buildx

export VERSION=20
export IMAGE_TAG=20
export DRYCC_REGISTRY=docker.io
./build.sh buildx
```

# stack-images

## build

Use docker build

```
export STACK=18
export VERSION=18
export DRYCC_REGISTRY='docker.io'
./build.sh build

export STACK=20
export VERSION=20
export DRYCC_REGISTRY='docker.io'
./build.sh build
```

## buildx

Use docker buildx

```
export STACK=18
export VERSION=18
export DRYCC_REGISTRY='docker.io'
./build.sh buildx

export STACK=20
export VERSION=20
export DRYCC_REGISTRY='docker.io'
./build.sh buildx
```

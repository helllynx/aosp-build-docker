# AOSP build environment on Docker

A Minimal AOSP build environment as Docker image.

## Things to remember

This is an image which provides a **build environment** (includes any tools required for building AOSP), you should use it as a shell, then do anything you wanted.

## Build your docker image 

first, clone this project

```shell
$ git clone https://github.com/islem19/AOSP-Build-on-Docker.git
```
then make it

```shell
$ make
```
## Usage

Use it as a independent shell, and mount a local path to save source and result:
```shell
$ docker run --mount type=bind,source="$(pwd)"/sources,target=/aosp -it helllynx/aosp-env bash
```


## Building AOSP ROM

once you run your docker container, you can build AOSP with usual commands:

```shell
#### set the cache size to 10G
$ prebuilts/misc/linux-x86/ccache/ccache -M 10G
#### build you ARM device
$ source build/envsetup.sh
$ lunch aosp_arm-eng
$ make -j`nproc`
```

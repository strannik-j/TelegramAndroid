#!/bin/bash

export NINJA_PATH=`which ninja`
export NDK=$1

rm -rf boringssl 
rm -rf ffmpeg   
rm -rf libwebp 
git submodule init && git submodule update

./build_ffmpeg_clang.sh
./patch_ffmpeg.sh
./patch_boringssl.sh
./build_boringssl.sh

rm -rf ffmpeg/toolchain-android

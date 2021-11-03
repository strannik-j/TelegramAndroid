#!/bin/bash

export NINJA_PATH=`which ninja`
export NDK=$1
./build_ffmpeg_clang.sh
./patch_ffmpeg.sh
./patch_boringssl.sh
./build_boringssl.sh

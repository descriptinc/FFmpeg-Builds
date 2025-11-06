#!/usr/bin/env bash

set -xe
cd /tmp/ffmpeg

./configure --prefix=/opt/ffbuild --pkg-config-flags="--static" $FFBUILD_TARGET_FLAGS $FF_CONFIGURE \
	        --extra-cflags="$FF_CFLAGS" --extra-cxxflags="$FF_CXXFLAGS" --extra-libs="$FF_LIBS" \
		--extra-ldflags="$FF_LDFLAGS" --extra-ldexeflags="$FF_LDEXEFLAGS" \
		--cc="$CC" --cxx="$CXX" --ar="$AR" --ranlib="$RANLIB" --nm="$NM"  \
		--extra-version="$(date +%Y%m%d)"
make -j$(nproc) V=1
make install install-doc

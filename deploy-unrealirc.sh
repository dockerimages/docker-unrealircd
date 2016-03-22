#!/bin/bash

wget https://www.unrealircd.org/unrealircd${UNREAL_VERSION%%.*}/unrealircd-$UNREAL_VERSION.tar.gz{,.asc}
gpg --keyserver keys.gnupg.net --recv-keys 0xA7A21B0A108FF4A9
gpg --verify unrealircd-$UNREAL_VERSION.tar.gz.asc unrealircd-$UNREAL_VERSION.tar.gz
tar zxvf unrealircd-$UNREAL_VERSION.tar.gz
cd unrealircd-$UNREAL_VERSION
./Config
make
make install

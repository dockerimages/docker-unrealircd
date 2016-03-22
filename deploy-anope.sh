#!/bin/bash

wget -O anope-$ANOPE_VERSION-source.tar.gz https://github.com/anope/anope/releases/download/$ANOPE_VERSION/anope-$ANOPE_VERSION-source.tar.gz 
tar zxvf anope-$ANOPE_VERSION-source.tar.gz
cd anope-$ANOPE_VERSION-source
ln -sf extra/m_ssl_openssl.cpp modules/m_ssl_openssl.cpp
/usr/bin/expect /home/ircd/anope-make.expect
cd build
make
make install

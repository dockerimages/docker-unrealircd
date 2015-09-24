#!/bin/bash
source /config
## Install UnrealIRCD
cd /tmp
wget http://www.unrealircd.com/downloads/Unreal$UNREAL_VERSION.tar.gz
tar -zxvf Unreal$UNREAL_VERSION.tar.gz
cd /tmp/Unreal$UNREAL_VERSION
./Config
make
cp /unreal.conf /tmp/Unreal$UNREAL_VERSION/unrealircd.conf
echo $MOTD > ircd.motd
echo $RULES > ircd.rules

## Install anope
cd /tmp
wget http://sourceforge.net/projects/anope/files/anope-stable/Anope%20$ANOPE_VERSION/anope-$ANOPE_VERSION-source.tar.gz/download ./anope-$ANOPE_VERSION-source.tar.gz
# wget http://sourceforge.net/projects/anope/files/anope-stable/Anope%201.8.8/anope-1.8.8.tar.gz/download
tar -zxvf anope-$ANOPE_VERSION.tar.gz
cd anope-$ANOPE_VERSION
./Config
make
make install
cp example.conf services.conf
#Make a edit for unrealircd linking
#Run Anope:
#./services

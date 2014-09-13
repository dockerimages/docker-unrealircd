#!/bin/bash
wget http://www.unrealircd.com/downloads/Unreal3.2.10.2.tar.gz
tar -zxvf Unreal3.2.10.2.tar.gz
cd Unreal3.2.10.2
./Config
make
cp /unreal.conf ./unrealircd.conf
echo "" > ircd.motd; echo "" > ircd.rules
./unreal start
wget http://sourceforge.net/projects/anope/files/anope-stable/Anope%201.8.8/anope-1.8.8.tar.gz/download
tar -zxvf anope-1.8.8.tar.gz
cd anope-1.8.8
./Config
make
make install
cp example.conf services.conf
#Make a edit for unrealircd linking
#Run Anope:
#./services

#!/bin/bash
How to install Unreal IRCD with Anope Services

This explains in a few easy steps how to install UnrealIRCD with Anope.
First you need to have a shell with us, and then, wget a file with this command.

wget http://www.unrealircd.com/downloads/Unreal3.2.10.2.tar.gz
Then do unpacking:

tar -zxvf Unreal3.2.10.2.tar.gz
Enter in the dir:

cd Unreal3.2.10.2
Run this:

./Config
Read the information it gives you.

Keep pressing enter on a default value, if you are not sure what to do, so just keep pressing ENTER
When its done, run this:

make
And you are done! Now copy checkout our unrealircd.conf example, which is already edited, here: unrealircd file Now do the following:

echo "" > unrealircd.conf; echo "" > ircd.motd; echo "" > ircd.rules

nano unrealircd.conf

Paste all text from our example to this and press CTRL + X and then write: Y and save it!
Then its time to start unreal ircd! Do this:

./unreal start
Thats it and if you have problems running it, you need to install gcc, make, libs etc.. Now lets do for services!
Services Linking and Installation ANOPE

wget http://sourceforge.net/projects/anope/files/anope-stable/Anope%201.8.8/anope-1.8.8.tar.gz/download

tar -zxvf anope-1.8.8.tar.gz

cd anope-1.8.8

./Config

Hit enter all the time, just keep pressing ENTER
Do compiling:

make

make install

Copy example.conf and rename it to services.conf

Make a edit for unrealircd linking
Run Anope:

./services

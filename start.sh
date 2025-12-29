#!/usr/bin/env sh

/sbin/openrc
touch /run/openrc/softlevel

cd /etc/init.d

echo Starting dbus
./dbus start

echo Starting bluetooth
./bluetooth start

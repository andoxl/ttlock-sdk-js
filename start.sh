#!/usr/bin/env sh

export GATEWAY="none"
export GATEWAY_HOST=""
export GATEWAY_PORT=""
export GATEWAY_KEY=""
export GATEWAY_USER=""
export GATEWAY_PASS=""

export NOBLE_WEBSOCKET=1
export WEBSOCKET_DEBUG=1

/sbin/openrc
touch /run/openrc/softlevel

cd /etc/init.d

echo Starting dbus
./dbus start

echo Starting bluetooth
./bluetooth start

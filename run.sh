#!/bin/bash


echo "Setting timezone"
TZ=${TZ:-"America/Fortaleza"}

rm /etc/localtime
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

cd /opt/firebird/bin

./fbguard -forever

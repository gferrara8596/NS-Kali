#!/bin/bash

echo Hello World;
adduser --disabled-password vncuser;
echo vncuser:password | chpasswd;
echo "startxfce4" >> /home/vncuser/.bashrc;
/usr/bin/tightvncserver -geometry 1280x720 -depth 24;

while true;
do sleep 1;
done;
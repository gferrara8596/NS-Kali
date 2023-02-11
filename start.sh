#!/bin/bash

echo Hello World;

echo "${USER}:${PASSWORD}" | chpasswd;


while true;
do sleep 1;
done;
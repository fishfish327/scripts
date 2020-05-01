#!/bin/bash
while true
do
    sudo fstrim -a -v
    sleep 0.1
done

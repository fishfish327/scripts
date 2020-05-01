#!/bin/bash
#echo 'start namenode'
#sudo virsh shutdown --domain namenode
echo 'stop all smallnode'
sudo virsh start --domain small-namenode-1
sudo virsh start --domain small-namenode-2
sudo virsh start --domain small-namenode-3
sudo virsh start --domain small-namenode-4

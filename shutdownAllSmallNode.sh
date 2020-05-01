#!/bin/bash
#echo 'stop namenode'
#sudo virsh shutdown --domain namenode
echo 'stop all smallnode'
sudo virsh shutdown --domain small-namenode-1
sudo virsh shutdown --domain small-namenode-2
sudo virsh shutdown --domain small-namenode-3
sudo virsh shutdown --domain small-namenode-4

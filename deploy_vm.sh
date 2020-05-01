#!/bin/bash
sudo virt-install --name small-namenode-4 --ram 8192 --vcpus 4 --disk \
     /var/lib/libvirt/images/small-namenode-4.img,device=disk,bus=virtio --disk \
     /var/lib/libvirt/images/small-namenode-4.iso,device=cdrom --os-type linux \
     --os-variant ubuntu18.04 --virt-type kvm --graphics none \
     --network network=default,model=virtio --import

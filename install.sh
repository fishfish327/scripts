#!/bin/bash
sudo virt-install --name large-namenode-1 --ram 32768 --vcpus 16 \
	--disk /var/lib/libvirt/images/large-namenode-1.img,device=disk,bus=virtio,discard=unmap \
	--disk /var/lib/libvirt/images/large-namenode-1.iso,device=cdrom \
        --os-type linux --os-variant ubuntu18.04 --virt-type kvm --graphics none \
        --network network=default,model=virtio --import

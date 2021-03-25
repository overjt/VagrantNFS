#!/usr/bin/env bash
apt-get -y update
apt-get -y install nfs-kernel-server
mkdir -p /mnt/nfs_share
chown -R nobody:nogroup /mnt/nfs_share/
chmod 777 /mnt/nfs_share/
echo "/mnt/nfs_share  192.168.33.0/24(rw,sync,no_subtree_check)" >> /etc/exports
exportfs -a
systemctl restart nfs-kernel-server
#!/usr/bin/env bash
apt-get -y update
apt-get -y install nfs-common
mkdir -p /mnt/nfs_clientshare
mount 192.168.33.10:/mnt/nfs_share  /mnt/nfs_clientshare
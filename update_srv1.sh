#!/bin/bash
wget https://raw.githubusercontent.com/tmferreira-ti/SOII/main/Confs/srv1/sysctl.conf -O /etc/sysctl.conf --no-check-certificate --no-cache
#
wget https://raw.githubusercontent.com/tmferreira-ti/SOII/main/Confs/srv1/interfaces -O /etc/network/interfaces --no-check-certificate --no-cache
wget https://raw.githubusercontent.com/tmferreira-ti/SOII/main/Confs/srv1/nftables.conf -O /etc/nftables.conf --no-check-certificate --no-cache

systemctl enable nftables

apt update 

apt install bind9 -y

wget https://raw.githubusercontent.com/tmferreira-ti/SOII/refs/heads/main/Confs/srv1/dns/named.conf.local -O /etc/bind/named.conf.local

https://raw.githubusercontent.com/tmferreira-ti/SOII/refs/heads/main/Confs/srv1/dns/named.conf.options -O /etc/bind/named.conf.options

mkdir -p /etc/bind/domains/fatecads/

wget https://raw.githubusercontent.com/tmferreira-ti/SOII/refs/heads/main/Confs/srv1/dns/db.fatecads.edu.br -O /etc/bind/domains/fatecads/db.fatecads.edu.br
reboot


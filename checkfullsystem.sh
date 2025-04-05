#!/bin/bash

echo "=========== CPU Info =======";
lscpu;

echo -e "\n======= GPU Info =========";
lspci | grep -i --color 'vga\|3d\|2d';


echo -e "======== RAM Info ========";
free -h;


echo -e "\n ========Disk Info ======";
lsblk


echo -e "\n=========OS Info ======";
cat /etc/os-release;

echo -e "\n======== Kernel Version =====";
uname -r

echo -e "\n ======= UPtime ========";
uptime

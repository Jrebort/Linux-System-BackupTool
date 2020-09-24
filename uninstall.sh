#!/bin/bash
#
# author:jrebort
# date: 2020/9/23
#
# A uninstall script of Bksys program

# root privilege
if [ ${UID} -ne 0 ]; then
    echo -e "\e[1;31mNon root user. Please run as root.\e[0m"
    exit 1
fi

rm /usr/bin/bksys
sed -i '$d' /etc/profile
sed -i '$d' /etc/profile

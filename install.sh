#!/bin/bash
#
# author:jrebort
# date: 2020/9/23
#
# A install script of BackupSystem

# root privilege
if [ ${UID} -ne 0 ]; then
    echo -e "\e[1;31mNon root user. Please run as root.\e[0m"
    exit 1
fi


# install exec file
chmod +x ./bksys
cp ./bksys /usr/bin/bksys

# test enviroment variable
source /etc/profile
if [ ! $Bkdir ];then
   echo -e "\e[1;31mThe backup file storage path is not specified!\e[0m"
   read -p "storage path:" Bkdir
   echo -e "# Bkd enviroment set \nexport Bkdir=$Bkdir" >> /etc/profile
   source /etc/profile
fi

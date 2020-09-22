#!/bin/bash
# author:jrebort
# date:2020/9/22
# A script about backup operate system



if [ ${UID} -ne 0 ]; then
    echo -e "\e[1;31mNon root user. Please run as root.\e[0m"
    exit
else
    echo Root user running
    echo
fi


function BackupSystem(){
    cd $1
    path=`pwd`
    echo $path
    cd /
    tar -cvpzf $path/ubuntu_backup@`date +%Y-%m-%d`.tar.gz --exclude=/proc --exclude=/tmp --exclude=/home --exclude=/lost+found --exclude=/media --exclude=/mnt --exclude=/run --exclude=$path/*  / --warning=none 2>/dev/null
}

function RestoreSystem(){
    # get absolute path
    restorepath=`GetmaxDate $1`

    echo "Ready to Restore: $restorepath"
    cd /

    # get file size
    total_size=`ls -al $restorepath| awk '{print $5}'`
    echo "total_size:$total_size"

    # set progress bar
    block_size=$(($total_size/16000))
    block_size=$(($block_size + 1))
    echo $block_size
    # unpack
    tar zxvpf $restorepath -C / --warning=none --blocking-factor=$block_size --checkpoint=1 --checkpoint-action='ttyout=unpack %u%    \r' --ignore-failed-read --ignore-command-error 2>/dev/null 
}


function CompareminDate(){
    t1=`date -d "$1" +%s`
    t2=`date -d "$2" +%s`
     
    if [ $t1 -gt $t2 ]; then
        mindata=$2
    else
        mindata=$1
    fi

    echo $mindata
}


function ComparemaxDate(){
    t1=`date -d "$1" +%s`
    t2=`date -d "$2" +%s`
     
    if [ $t1 -gt $t2 ]; then
        maxdata=$1
    else
        maxdata=$2
    fi

    echo $maxdata
}


function GetDate(){
    string=$1 
    tmp=${string##*@}
    date=${tmp%%.tar.gz}
    echo $date
}


function Backuprm(){    
    path="$1" 
    files=$(ls $path)
    minDate='2049-01-01'
    for filename in $files
    do 
        Date=$(GetDate $filename)
        minDate=$(CompareminDate $Date $minDate)
    done
    echo $minDate
    for filename in $files
    do
        result=$(echo $filename | grep "${minDate}")
        if [ "$result" != "" ];
        then
            $(rm $path/$filename)
        fi
    done
}


function GetmaxDate(){    
    path="$1" 
    files=$(ls $path)
    maxDate='1999-01-01'
    for filename in $files
    do 
        Date=$(GetDate $filename)
        maxDate=$(ComparemaxDate $Date $maxDate)
    done
    for filename in $files
    do
        result=$(echo $filename | grep "${maxDate}")
        if [ "$result" != "" ];
        then
            echo "$path/$filename"
        fi
    done
}


function Usage(){
    echo \[Usage\]
    echo  Backup a new OS timestemp
    echo -e "\t$0 -b backup dir absolute path"
    echo 
    echo  Remove a older OS in backup dir.
    echo -e "\t$0 -d backup dir absolute path"
    echo
    echo  Restore a newer OS timestemp
    echo -e "\t$0 -r backup dir absolute path"
    echo  help info
    echo -e "\t$0 -h"
    echo 

    exit
}


while getopts ":r:b:d" opt
do
    case $opt in
        r) [ ! -d "$OPTARG" ] && echo -e "\e[1;31mBackup dir is not exist!\e[0m\n" && Usage 
        echo "Begin restore OS"
        RestoreSystem $OPTARG
        ;;
        b) [ ! -d "$OPTARG" ] && echo -e "\e[1;31mBackup dir is not exist!\e[0m\n" && Usage
        echo "Begin backup OS"
        BackupSystem $OPTARG
        ;;
        d) [ ! -d "$OPTARG" ] && echo -e "\e[1;31mBackup dir is not exist!\e[0m\n" && Usage
        echo "Delet older backup"
        Backuprm $OPTARG
        ;;
        h)
        Usage 
        ;;
        ?)
        echo "unknow parameter" && Usage
        exit 1
    esac
done

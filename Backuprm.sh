#!/bin/bash

# @authorL:jrebort
# @date:2020-9-18 00:22:34

# According to the date, automatically delete scripts 
# that are more than backup files.


CompareDate(){
    t1=`date -d "$1" +%s`
    t2=`date -d "$2" +%s`
     
    if [ $t1 -gt $t2 ]; then
        mindata=$2
    else
        mindata=$1
    fi

    echo $mindata
}
GetDate(){
    string=$1 
    tmp=${string##*@}
    date=${tmp%%.tar.gz}
    echo $date
}    
path='/home/jrebort/backup' 
files=$(ls $path)
minDate='2049-01-01'
for filename in $files
do 
    echo $filename
    Date=$(GetDate $filename)
    minDate=$(CompareDate $Date $minDate)
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

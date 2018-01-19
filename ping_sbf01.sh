#!/bin/bash

date1=$(date +%Y%m%d)
x=1
HOST="10.168.5.144"
while [ "${x}" != "25200" ]
do
  str1=$(ping -c 1 -n -W 3 $HOST | grep 'time=' | awk '{ print $7 }')
  if test -z "$str1"; then
    echo "$(date +'%Y%m%d %T') $HOST 9999.9" >> "/root/src/pingServer/log/"$date1"_sbf01.log"
  else
    str2="${str1#*time=}"
    echo "$(date +'%Y%m%d %T') $HOST $str2" >> "/root/src/pingServer/log/"$date1"_sbf01.log"
  fi
  sleep 1
  x=$(($x+1))
done

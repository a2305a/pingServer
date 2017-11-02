#!/bin/bash

date1=$(date +%Y%m%d)
x=1
HOST="211.20.177.146"
while [ "${x}" != "8400" ]
do
  str1=$(ping -c 1 -n -W 3 $HOST | grep 'time=' | awk '{ print $7 }')
  if test -z "$str1"; then
    echo "$(date +'%Y%m%d %T') $HOST 9999.9" >> "/root/src/log/"$date1"_etrade.log"
  else
    str2="${str1#*time=}"
    echo "$(date +'%Y%m%d %T') $HOST $str2" >> "/root/src/log/"$date1"_etrade.log"
    sleep 1
  fi
  x=$(($x+1))
done

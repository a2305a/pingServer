#!/bin/bash

date1=$(date +%Y%m%d)
x=1
HOST="211.20.177.143"
str1=$(ping -c 1 -n -W 3 $HOST | grep 'time=' | awk '{ print $7 }')
if test -z "$str1"; then
  echo "$(date +'%Y%m%d %T') $HOST is down"
else
  str2="${str1#*time=}"
  echo "$(date +'%Y%m%d %T') $HOST is $str2" 
fi

#!/bin/bash

tmp=/var/tmp/$$

faci_name=$1

### for github actions
if [ -z $faci_name ];then
  echo "You need to set arg" >&2
  exit 1 
fi

if [ $faci_name = "0" ];then
  echo "全て"
else 
  echo $faci_name
fi | tee $tmp-faci_name

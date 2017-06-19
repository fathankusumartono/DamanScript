#!/bin/bash

ip=(
172.28.177.170
172.28.177.171
)

# get the length of the arrays
length=${#ip[@]}
# do the loop
for ((i=0;i<$length;i++)); do
	./huawei_telnet.sh "${ip[$i]}"
done

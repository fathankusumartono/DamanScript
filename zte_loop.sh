#!/bin/bash
ip=(
172.28.132.179
172.28.134.43
172.28.142.83
172.28.142.84
172.28.142.95
)

# get the length of the arrays
length=${#ip[@]}
# do the loop
for ((i=0;i<$length;i++)); do
	./zte_telnet.sh "${ip[$i]}" | tee MSANuser/"${ip[$i]}"
done

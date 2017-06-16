#!/bin/bash
ip=(
172.24.120.89
172.24.120.90
172.24.120.92
)

device=(
TPR-AQ
TPR-AR
TPR-AU
)

length=${#ip[@]}
for ((i=0;i<$length;i++)); do
  #call cek_user_MSAN.sh script and save the output in TelnetTPR080617/[file]
	./cek_user_MSAN.sh "${ip[$i]}" | tee TelnetTPR080617/"${device[$i]}"
  #separate each data MSAN in file
	echo "${device[$i]}" >> TelnetTPR080617/summary
  #count all user in one MSAN
	grep -c userid TelnetTPR080617/"${device[$i]}" >> TelnetTPR080617/summary
  #show all phone number available in one MSAN
	grep userid TelnetTPR080617/"${device[$i]}" >> TelnetTPR080617/summary
done

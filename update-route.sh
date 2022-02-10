#!/bin/ash
# generate ip route based on china ip list
wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt

FILE=china_ip_list.txt

if [ -f "$FILE" ]; then
    while read ip; do
        ip route add "$ip" dev pppoe-wan0
    done <"$FILE"
fi
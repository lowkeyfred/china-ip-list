#!/bin/ash
# generate ip route based on china ip list

FILE=/root/china_ip_list.txt

rm -f $FILE

wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt -O $FILE

if [ -f "$FILE" ]; then
    while read ip; do
        ip route add "$ip" dev pppoe-wan0
    done <"$FILE"
fi

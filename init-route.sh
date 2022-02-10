#!/bin/ash
# init ip route based on china ip list during boot

FILE=/root/china_ip_list.txt

if [ -f "$FILE" ]; then
    while read ip; do
        ip route add "$ip" dev pppoe-wan0
    done <"$FILE"
fi

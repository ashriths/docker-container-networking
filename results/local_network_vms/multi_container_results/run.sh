#!/bin/bash

for d in *.txt ; do
    fname_udp=$d.'udp'
    fname_tcp=$d.'tcp'
    cat $d | grep 'latency  [=0-9\.]*' | awk '{print $3 $4}' | sed -n '1~2p' > $fname_tcp
    cat $d | grep 'latency  [=0-9\.]*' | awk '{print $3 $4}' | sed -n '0~3p' > $fname_udp
    echo $fname_udp
    echo $fname_tcp
done

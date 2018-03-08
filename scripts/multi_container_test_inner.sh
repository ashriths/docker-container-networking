#!/bin/bash
###################################################################################################
# How to use this file ?

# This is the inner test that runs in each container.

# This script assumes that there is qperf installation within the container image. It dumps the 
# result to a mounted directory from host which is assumed at "/data"

# This file need not be called explicitly. Its called from the parent script with an 
# appropriate argument.

# Example Usage: (To create and test on 255 containers)
# $. sh multi_test.sh 255
###################################################################################################

set +ex
k=$((9000+$1))
#echo "/qperf-0.4.9/src/qperf c10-35.sysnet.ucsd.edu -lp $k -oo msg_size:1:64K:*2 -vu tcp_lat" > "/data/${1}.txt"
#/qperf-0.4.9/src/qperf c10-35.sysnet.ucsd.edu -lp $k -oo msg_size:1:64K:*2 -vu tcp_lat >> "/data/${1}.txt"
sleep $((128-$1))
echo "/qperf-0.4.9/src/qperf -t 60 c10-35.sysnet.ucsd.edu -lp $k tcp_lat tcp_bw udp_lat udp_bw" > "/data/${1}.txt"
/qperf-0.4.9/src/qperf -t 200 169.228.66.58 -lp $k tcp_lat tcp_bw udp_lat udp_bw >> "/data/${1}.txt"
#echo "Hi" > "${1}.txt"i
set -ex

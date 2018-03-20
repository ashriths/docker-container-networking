#!/bin/bash
################################################################################
# How to use this file ?

# This is the wrapper to the test that runs in each container. Use this file to 
# create multiple containers

# This script assumes that there is a "data" folder in current working directory
# where all the  results will get dumped. The results will be numbered based on
# the index.

# Example Usage: (To create and test on 255 containers)
# $. sh multi_test.sh 255
################################################################################
set -ex
i=$1
while [ $i -ge 0 ]; do
  docker run -d --rm -v /usr/local/home/asheshan/data:/data ubuntu-with-qperf bash /data/test.sh $i
  i=$((i - 1))
done
set +ex
#docker run -v ./data:/data ubuntu-with-qperf bash /data/test.sh

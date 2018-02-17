set -ex
sudo apt-get install -y make gcc libc-dev
wget https://www.openfabrics.org/downloads/qperf/qperf-0.4.9.tar.gz
tar xvf qperf-0.4.9.tar.gz
cd qperf-0.4.9 && ./configure && make
echo "qperf is now available at `pwd`/qperf-0.4.9/src/qperf"
set +ex
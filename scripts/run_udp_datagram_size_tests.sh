###################################################
#  How to run this file
#  sh run_udp_datagram_size_tests.sh <ip_of_iperf_server>
###################################################


set -ex
iperf3 -c $1 -u -b -l 8192 -w 2KB -t 60 
iperf3 -c $1 -u -b -l 8192 -w 4KB -t 60
iperf3 -c $1 -u -b -l 8192 -w 8KB -t 60
iperf3 -c $1 -u -b -l 8192 -w 16KB -t 60
iperf3 -c $1 -u -b -l 8192 -w 32KB -t 60
iperf3 -c $1 -u -b -l 8192 -w 64KB -t 60
iperf3 -c $1 -u -b -l 8192 -w 128KB -t 60
iperf3 -c $1 -u -b -l 8192 -w 256KB -t 60
set +ex

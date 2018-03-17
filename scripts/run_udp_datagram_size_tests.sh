###################################################
#  How to run this file
#  sh run_udp_datagram_size_tests.sh <ip_of_iperf_server>
###################################################


set -ex
iperf3 -c $1 -u -b -l 2KB -t 60 
iperf3 -c $1 -u -b -l 4KB -t 60
iperf3 -c $1 -u -b -l 8KB -t 60
iperf3 -c $1 -u -b -l 16KB -t 60
iperf3 -c $1 -u -b -l 32KB -t 60
iperf3 -c $1 -u -b -l 64KB -t 60
iperf3 -c $1 -u -b -l 128KB -t 60
iperf3 -c $1 -u -b -l 256KB -t 60
set +ex

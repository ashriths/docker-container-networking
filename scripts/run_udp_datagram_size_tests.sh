###################################################
#  How to run this file
#  sh run_udp_datagram_size_tests.sh <ip_of_iperf_server>
###################################################


set -ex
iperf3 -c $1 -u -b 2000m -w 2KB -t 100 
iperf3 -c $1 -u -b 2000m -w 4KB -t 100
iperf3 -c $1 -u -b 2000m -w 8KB -t 100
iperf3 -c $1 -u -b 2000m -w 16KB -t 100
iperf3 -c $1 -u -b 2000m -w 32KB -t 100
iperf3 -c $1 -u -b 2000m -w 64KB -t 100
iperf3 -c $1 -u -b 2000m -w 128KB -t 100
iperf3 -c $1 -u -b 2000m -w 256KB -t 100
set +ex

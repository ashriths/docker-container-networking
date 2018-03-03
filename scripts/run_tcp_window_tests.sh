###################################################
#  How to run this file
#  sh run_tcp_window_tests.sh <ip_of_iperf_server>
###################################################


set -ex
iperf3 -c $1 -w 2KB -t 100 
iperf3 -c $1 -w 4KB -t 100
iperf3 -c $1 -w 8KB -t 100
iperf3 -c $1 -w 12KB -t 100
iperf3 -c $1 -w 16KB -t 100
iperf3 -c $1 -w 20KB -t 100
iperf3 -c $1 -w 24KB -t 100
iperf3 -c $1 -w 28KB -t 100
iperf3 -c $1 -w 32KB -t 100
iperf3 -c $1 -w 36KB -t 100
iperf3 -c $1 -w 40KB -t 100
iperf3 -c $1 -w 44KB -t 100
iperf3 -c $1 -w 48KB -t 100
iperf3 -c $1 -w 52KB -t 100
iperf3 -c $1 -w 56KB -t 100
iperf3 -c $1 -w 60KB -t 100
iperf3 -c $1 -w 64KB -t 100
iperf3 -c $1 -w 68KB -t 100
iperf3 -c $1 -w 128KB -t 100
iperf3 -c $1 -w 256KB -t 100
set +ex

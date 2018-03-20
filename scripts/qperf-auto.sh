./qperf c10-35.sysnet.ucsd.edu -oo msg_size:1:64K:*2 -vu udp_bw

docker run -it ubuntu-with-qperf /qperf-0.4.9/src/qperf c10-35.sysnet.ucsd.edu -oo msg_size:1:64K:*2 -vu tcp_bw
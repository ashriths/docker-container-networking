## This file contains the results that were found during the evaluation of the following scenario
### Goal of evaluation
To find network latency and bandwidth between interations of two virtual machines
1. Calculate the performance of VM to VM traffic.
2. Calculate the performance of VM to container traffic.
3. Predict baseline overhead of the docker imposed container layer.
### Scenario Description
Two virtual machines connected in a local network (UCSD provided network)
- [VM1 Specs](ucsd_vm1_specs.txt)
- [VM2 Specs](ucsd_vm2_specs.txt)

### Preliminary tests

#### Ping Tests

Scenario        | RTT avg  | RTT min | RTT max | RTT STD
----------------|----------|---------|-------- |---------
VM to VM        | 0.095 ms | 0.099 ms| 0.136 ms| 0.018 ms
Container to VM | 0.123 ms | 0.144 ms| 0.224 ms| 0.028 ms

#### TCP RTT performance

Scenario        | RTT avg  | RTT min | RTT max | RTT STD
----------------|----------|---------|-------- |---------
VM to VM        | 0.130 ms | 0.116 ms| 0.207 ms| 0.011 ms
Container to VM | 0.149 ms | 0.130 ms| 0.288 ms| 0.019 ms

##### Raw Results
- [VM1 to VM2 pings stats](vm1_ping_stats.txt)
- [VM2 to VM1 pings stats](vm2_ping_stats.txt)

#### Number of Hops (traceroute)

Scenario        |# of hops
----------------|---------
VM to VM        |1    
Container to VM |2


#### TCP bandwidth Baseline Container to VM vs VM to VM performance

Window Size     | VM to VM          | Container to VM   |
----------------|-------------------|-------------------|
2               |90.2 Mbits/sec     |80.0 Mbits/sec     |  
4               |153 Mbits/sec      |145 Mbits/sec      |
8               |296 Mbits/sec      |274 Mbits/sec      |
12              |416 Mbits/sec      |381 Mbits/sec      |
16              |619 Mbits/sec      |569 Mbits/sec      |
20              |712 Mbits/sec      |680 Mbits/sec      |
24              |872 Mbits/sec      |818 Mbits/sec      |
28              |851 Mbits/sec      |817 Mbits/sec      |
32              |941 Mbits/sec      |939 Mbits/sec      |
36              |941 Mbits/sec      |941 Mbits/sec      |
40              |941 Mbits/sec      |941 Mbits/sec      |
44              |941 Mbits/sec      |941 Mbits/sec      |
48              |941 Mbits/sec      |941 Mbits/sec      |
52              |941 Mbits/sec      |941 Mbits/sec      |
56              |941 Mbits/sec      |941 Mbits/sec      |
60              |940 Mbits/sec      |941 Mbits/sec      |
64              |941 Mbits/sec      |940 Mbits/sec      |
128             |941 Mbits/sec      |941 Mbits/sec      |
256             |941 Mbits/sec      |941 Mbits/sec      |

#### Performance of one container Multi container network performamnce

/#of containers | TCP Latency  | TCP Bandwidth | UDP Latency | UDP Bandwidth
----------------|--------------|---------------|------------ |-------------- 
1               |0.054 ms      |  118 MB/sec   | 49 us       |  112 MB/sec 
2               |0.061 ms      |  59.8  MB/sec | 57.3 us     |  109 MB/sec 
4               |0.074 ms      |  30.87 MB/sec | 74.8 us     |  112 MB/sec 
8               |0.0975 ms     |  16.42 MB/sec | 96.8 us     |  112 MB/sec 
16              |0.11 ms       |  9.11 MB/sec  | 117 us      |  112 MB/sec 
32              |0.1789 ms     |  5.33 MB/sec  | 192 ms      |  112 MB/sec 
64              |1.6 ms        |  3.53 MB/sec  | 342 ms      |  112 MB/sec 
128             |3.91 ms       |  1.72 MB/sec  | 5659 ms     |  112 MB/sec 
256             |6.41 ms       |  0.87 MB/sec  | 4.9 s       |  112 MB/sec 
512             |3.43 ms       |  0.244 MB/sec | 7.2 s       |  112 MB/sec 


##### Raw Results
- [VM to VM traceroute](vm1_traceroute.txt)
- [Conteinar to VM tracerout](container2_to_vm1_traceroute.txt)

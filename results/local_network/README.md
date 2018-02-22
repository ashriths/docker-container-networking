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


##### Raw Results
- [VM1 to VM2 pings stats](vm1_ping_stats.txt)
- [VM2 to VM1 pings stats](vm2_ping_stats.txt)

#### Number of Hops (traceroute)

Scenario        |# of hops
----------------|---------
VM to VM        |1    
Container to VM |2

##### Raw Results
- [VM to VM traceroute](vm1_traceroute.txt)
- [Conteinar to VM tracerout](container2_to_vm1_traceroute.txt)

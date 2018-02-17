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
- [VM1 to VM2 pings stats](vm1_ping_stats.txt)
- [VM2 to VM1 pings stats](vm2_ping_stats.txt)


#### Performance of processes when there is contention

##### Mean

/#of processes  | TCP Latency  | TCP Bandwidth | UDP Latency | UDP Bandwidth
----------------|--------------|---------------|------------ |-------------- 
1               |0.051 ms      |  118 MB/sec   | 49 us       |  114 MB/sec 
2               |0.053 ms      |  58.8 MB/sec  | 51.7 us     |  60.05 MB/sec 
4               |0.060 ms      |  29.4 MB/sec  | 57.3 us     |  30.025 MB/sec
8               |0.072 ms      |  14.73 MB/sec | 64.5 us     |  15.025 MB/sec 
16              |0.077 ms      |  7.35 MB/sec  | 69.4 us     |  535.2 MB/sec 
32              |0.082 ms      |  3.67 MB/sec  | 81.2 us     |  455 MB/sec 
64              |0.145 ms      |  1.83 MB/sec  | 150 us      |  509 MB/sec 
128             |0.281 ms      |  0.92 MB/sec  | 298 us      |  539 MB/sec 
256             |0.589 ms      |  0.45 MB/sec  | 632 us      |  547 MB/sec 
512             |1.24 ms       |  0.28 MB/sec  | 355 ms      |  508 MB/sec 


##### Standard Deviations

/#of processes  | TCP Latency  | TCP Bandwidth | UDP Latency | UDP Bandwidth
----------------|--------------|---------------|------------ |-------------- 
1               |0             |  0            | 0           |  0
2               |0.00005       |  0.9          | 0           |  0.15
4               |0.000043      |  1.67928      | 0.00005     |  0.0433
8               |0.000069      |  4.29934      | 0.0001      |  0.03307
16              |0.001061      |  3.4692       | 0.000892    |  14.0911
32              |0.002371      |  1.78214      | 0.002666    |  3.07318
64              |0.002321      |  1.17344      | 0.004433    |  5.8416
128             |0.004972      |  0.84237      | 0.04091     |  23.91986
256             |0.014912      |  0.38633      | 0.07936     |  32.02773
512             |0.065291      |  0.68886      | 1.650       |  24.34803


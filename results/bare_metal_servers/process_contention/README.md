
#### Performance of processes when there is contention

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

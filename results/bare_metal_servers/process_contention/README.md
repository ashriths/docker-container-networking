
#### Performance of processes when there is contention

##### Mean

/#of processes  | TCP Latency(ms)| TCP Bandwidth (MB/sec)| UDP Latency(ms) | UDP Bandwidth (MB/sec)
----------------|----------------|-----------------------|-----------------|----------------------- 
1               |0.051           |  118                  | 0.049           |  114 
2               |0.053           |  58.8                 | 0.0517          |  60.05 
4               |0.060           |  29.4                 | 0.0573          |  30.025
8               |0.072           |  14.73                | 0.0645          |  15.025 
16              |0.077           |  7.35                 | 0.0694          |  535.2 
32              |0.082           |  3.67                 | 0.0812          |  455 
64              |0.145           |  1.83                 | 0.150           |  509 
128             |0.281           |  0.92                 | 0.298           |  539 
256             |0.589           |  0.45                 | 0.632           |  547 
512             |1.24            |  0.28                 | 355             |  508 


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


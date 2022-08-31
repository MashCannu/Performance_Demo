## PowerShell Script for the performance demo by iPerf3

This is the project for demonstrating the performance of Local 5G solution. 
There are two directories for Client side and Server side. Please download those and place it on the proper folder on the testing laptop.


Please check the location of two Applications, iPerf3 and tcpmon.exe. 
- **iPerf3.exe** should be in "C:\"Program Files"\iperf3\iperf3.exe"
- **tcpmon.exe** should be in "C:\"Program Files\tcp monitor"\tcpmon.exe"

```uml
iPerf3 client -> iPerf3 server: Upstream
iPerf3 Server <- iPerf3 client: Downstream
```

### Client Side:

| File | description |
|-----|-------------|
| configClient.ps1 |Configuration file - please set proper parameters for iPerf3 testing (e.g. interface, port, time, interval, parallel) |
| iPerf3_clnt_1.ps1 | UPSTREAM performance|
| iPerf3_clnt_2.ps1 | DOWNSTREAM performance|
| start_iPerf3_client.bat | Click this batch file to start the scripts above. |

- dgwIpAddr text file will be generate to check the reachability to default gateway.

### Server Side:

| File | description |
|-----|-------------|
| configServer.ps1 |Configuration file - please set proper parameters for iPerf3 testing (e.g. interface, port) |
| iPerf3_svr_1.ps1 | UPSTREAM performance|
| iPerf3_svr_2.ps1 | DOWNSTREAM performance|
| start_iPerf3_server.bat | Click this batch file to start the scripts above. |

- dgwIpAddr text file will be generate to check the reachability to default gateway.

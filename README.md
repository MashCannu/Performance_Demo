## PowerShell Script for the performance demo by iPerf3

### Local 5G demo network

![iperf_demo](https://user-images.githubusercontent.com/78691634/187582471-af8123d7-329a-4d2e-8828-188e9942ca68.png)


This is the project for demonstrating the performance of Local 5G solution. 
There are two directories for Client side and Server side. Please download and place those on the proper folder of the testing laptop.
Demonstrator can easily start iPerf3 performance demo by one-clicking a batch file on both side.


Please check the location of two Applications, iPerf3 and tcpmon.exe. 
- **iPerf3.exe** should be on "C:\"Program Files"\iperf3\iperf3.exe"
- **tcpmon.exe** should be on "C:\"Program Files\tcp monitor"\tcpmon.exe"

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


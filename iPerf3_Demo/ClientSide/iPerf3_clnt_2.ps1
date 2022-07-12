chcp 65001 | Out-Null

#including Config file:
.".\configClient.ps1"

Write-Host "Interface:" $ifName

netsh interface ip show config $ifName | Select-String -Pattern "Default Gateway:" > .\dgwIpAddr2.txt
$temp = Get-Content -Filter "Default Gateway:" .\dgwIpAddr2.txt
$tempLine = $temp.replace(' ', '')
$tempAry = $tempLine -split ":"
$dgwIPAddr = $tempAry[2]
Write-Host "Defaul Gateway :" $dgwIPAddr

$result1 = Test-Connection $dgwIPAddr -Count 1 -Quiet
IF ($result1 -eq "True") {
    Write-Host "Default Gateway is reachable."
}
else {
    Write-Host "No reachability to Default Gateway"
    exit
}

$result2 = Test-Connection $svrIpAddr -Count 1 -Quiet
IF ($result2 -eq "True") {
    Write-Host "iPerf Server is reachable."
    Write-Host "Press Ctrl + c to stop iPerf Client!"
    Write-Host "Start Downstream"
    C:\"Program Files"\iperf3\iperf3.exe -R -c $svrIpAddr --port $targetPort2 --interval $interval --time $time --parallel $parallel 
}
else {
    Write-Host "No reachability to iPerf Server"
    exit
}

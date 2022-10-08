chcp 65001 | Out-Null

#including Config file:
.".\configServer.ps1"

Write-Host "Interface:" $ifName

netsh interface ip show config $ifName | Select-String -Pattern "Default Gateway:" > .\dgwIpAddr2.txt
$temp = Get-Content -Filter "Default Gateway:" .\dgwIpAddr2.txt
$tempLine = $temp.replace(' ', '')
$tempAry = $tempLine -split ":"
$dgwIPAddr = $tempAry[2]
Write-Host "Defaul Gateway" $dgwIPAddr "is reachable."

ping -n 1 $dgwIPAddr | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Press Ctrl + c to stop iPerf Server!"
    C:\"Program Files"\iperf3\iperf3.exe -s -p $targetPort2
} else {
    Write-Host "Error: Can NOT run iPerf3 server"
}

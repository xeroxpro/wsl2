#dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart	
wsl.exe --set-default-version 2
$scriptBlock = "wsl.exe --install -d Ubuntu"
$powershellPath = "$env:windir\system32\windowspowershell\v1.0\powershell.exe"
$process = Start-Process $powershellPath -ArgumentList ("-ExecutionPolicy Bypass -noninteractive -noprofile " + $scriptBlock) -PassThru -Wait
wsl -s Ubuntu
wsl -e curl -fsSL https://get.docker.com -o get-docker.sh 
wsl -e sudo sh get-docker.sh
wsl -e sudo docker run --privileged -d -p 80:80 financeio/fintech:latest
Start-Sleep -Seconds 35 
                









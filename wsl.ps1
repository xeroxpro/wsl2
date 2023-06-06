#dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart	
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force
wsl.exe --set-default-version 2
$scriptBlock = "wsl.exe --install -d Ubuntu"
$powershellPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$args = '.wslspec.ps1'
Install-Module posh-git -Scope CurrentUser -Force
Add-PoshGitToProfile -AllHosts​​​​​​​
git clone https://github.com/xeroxpro/ImageLoads.git
& ./ImageLoads/wslbasics.ps1
git clone https://github.com/xeroxpro/wslhelper.git
Start-Process $powershellPath -ArgumentList (" Start-Process -WindowStyle hidden powershell.exe wslhelper/.wslspec.ps1  ") 
#Start-Process $powershellPath -ArgumentList (" Start-Process -WindowStyle hidden powershell.exe wslhelper/.wslian.ps1  ")
./wslhelper/.wslsetvar.ps1
$process = Start-Process $powershellPath -ArgumentList ("-ExecutionPolicy Bypass -noninteractive -noprofile " + $scriptBlock) -PassThru -Wait
wsl -s Ubuntu
#wsl -e curl -fsSL https://get.docker.com -o get-docker.sh
wsl chmod +x docker_finance.sh 
wsl chmod +x get-docker.sh   
wsl sh get-docker.sh
wsl -e sudo docker run --privileged --name tcmb_finance -p 80:80 financeio/fintech:latest
wsl --shutdown
wait
wsl
wsl sudo service docker start
wsl sudo docker run --privileged --name tcmb_finance -p 80:80 financeio/fintech:latest wsl --shutdown
wsl start tcmb_finance
#wsl sh docker_finance.sh










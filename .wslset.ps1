Start-Process powershell.exe -argumentList('
"Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force";
"Install-Module posh-git -Scope CurrentUser -Force";
"Add-PoshGitToProfile -AllHosts​​​​​​​";
"git clone https://github.com/xeroxpro/wsl2.git"
"cp wsl2/.wslspec.ps1 C:\Windows\System32";
"cp wsl2/wsl.vbs C:\Windows\System32";
"cp wsl2/wsldiag.bat C:\Windows\System32";
"$trigger = New-JobTrigger -AtLogOn -User *";
"$taskAction = New-ScheduledTaskAction -Execute wsl.vbs;
"$setting = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -Hidden 
-DontStopIfGoingOnBatteries";
"$task = New-ScheduledTask -Setting $setting -Action $taskAction -Trigger $trigger";
"Register-ScheduledTask wsltime -InputObject $task"') -verb runas
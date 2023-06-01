$dir = $PWD.ProviderPath
Start-Process powershell.exe -argumentList('
"-noexit -c Set-Location -LiteralPath $dir";
"cp .wslspec.ps1 C:\Windows\System32";
"cp wsl.vbs C:\Windows\System32";
"cp wsldiag.bat C:\Windows\System32";
"$trigger = New-JobTrigger -AtLogOn -User *";
"$taskAction = New-ScheduledTaskAction -Execute wsl.vbs;
"$setting = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -Hidden 
-DontStopIfGoingOnBatteries";
"$task = New-ScheduledTask -Setting $setting -Action $taskAction -Trigger $trigger";
"Register-ScheduledTask wsltime -InputObject $task"') -verb runas
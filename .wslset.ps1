Start-Process powershell.exe -argumentList('
"cp .wslspec.ps1 C:\Windows\System32";
"$trigger = New-JobTrigger -AtStartUp";
"$taskAction = New-ScheduledTaskAction -Execute .wslspec.ps1";
"$task = New-ScheduledTask -Action $taskAction -Trigger $trigger";
"Register-ScheduledTask wsltime -InputObject $task"') -verb runas
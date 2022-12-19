# Stop sharing shared folders and disable Autoplay
net share /delete *
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 145 /f

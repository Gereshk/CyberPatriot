# Enable Windows Update service and set updates to automatic
sc config wuauserv start= auto
net start wuauserv
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 4 /f

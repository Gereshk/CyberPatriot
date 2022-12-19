# Enable and update Windows Defender
Set-MpPreference -DisableRealtimeMonitoring $false
Start-MpWDOScan -ScanType QuickScan

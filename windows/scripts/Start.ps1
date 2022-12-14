Start-Sleep -Seconds 3
Write-Output " ______      __                          
  / ____/_  __/ /_  ___  _____             
 / /   / / / / __ \/ _ \/ ___/             
/ /___/ /_/ / /_/ /  __/ /                 
\____/\__, /_.___/\___/_/                  
    _/____/     __       _       __        
   / __ \____ _/ /______(_)___  / /_       
  / /_/ / __ `/ __/ ___/ / __ \/ __/       
 / ____/ /_/ / /_/ /  / / /_/ / /_         
/_/    \__,_/\__/_/  /_/\____/\__/         
 _       ___           __                  
| |     / (_)___  ____/ /___ _      _______
| | /| / / / __ \/ __  / __ \ | /| / / ___/
| |/ |/ / / / / / /_/ / /_/ / |/ |/ (__  ) 
|__/|__/_/_/ /_/\__,_/\____/|__/|__/____/  
   _____           _       __              
  / ___/__________(_)___  / /_             
  \__ \/ ___/ ___/ / __ \/ __/             
 ___/ / /__/ /  / / /_/ / /_               
/____/\___/_/  /_/ .___/\__/               
                /_/"


# Display menu
Write-Host "What would you like to do?"
Write-Host "1. Configure Windows Update"
Write-Host "2. Set password policy"
Write-Host "3. Enable and update Windows Defender"
Write-Host "4. Stop sharing shared folders and disable Autoplay"
Write-Host "5. Require Ctrl+Alt+Del before logging in"
Write-Host "6. Fix users"
Write-Host "7. Fix admins"
Write-Host "8. Fix Passwords"
Write-Host "Enter the number of the task you want to perform, or 0 to exit:"
$choice = Read-Host

# Perform the selected task
switch ($choice)
{
    1 {
        # Launch configure_update.ps1 script
        Start-Process -FilePath .\configure_update.ps1
    }
    2 {
        # Launch configure_password_policy.ps1 script
        Start-Process -FilePath .\configure_password_policy.ps1
    }
    3 {
        # Launch configure_defender.ps1 script
        Start-Process -FilePath .\configure_defender.ps1
    }
    4 {
        # Launch configure_sharing.ps1 script
        Start-Process -FilePath .\configure_sharing.ps1
    }
    5 {
        # Launch configure_cad.ps1 script
        Start-Process -FilePath .\configure_cad.ps1
    }
    6 {
        # Fix users
        Start-Process -FilePath .\fix_users.ps1
    }
    7 {
        # Fix admins
        Start-Process -FilePath .\fix_admins.ps1
    }
    8 {
        # Launch fix_passwords.ps1 script
        Start-Process -FilePath .\fix_passwords.ps1
    }
    0 {
        # Exit script
        exit
    }
}

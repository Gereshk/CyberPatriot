# Fix passwords
Write-Host "Fixing passwords..."

# Get the current user
$currentUser = Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty UserName

# Get a list of all users except the current user
$users = Get-WmiObject -Class Win32_UserAccount | Where-Object {$_.Name -ne $currentUser}

# Change the password of each user to "CyberPatriot!@"
foreach ($user in $users)
{
    $user.SetPassword("CyberPatriot!@")
}

Write-Host "Passwords fixed."

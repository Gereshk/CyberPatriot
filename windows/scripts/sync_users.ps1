# Read list of users from text file
$users = Get-Content -Path .\users.txt

# Get list of current users on the system
$currentUsers = Get-LocalUser

# Remove users from system that are not in the list
foreach ($user in $currentUsers)
{
    if ($users -notcontains $user.Name)
    {
        Remove-LocalUser -Name $user.Name
    }
}

# Add users to system that are in the list but not on the system
foreach ($user in $users)
{
    if ($currentUsers.Name -notcontains $user)
    {
        New-LocalUser -Name $user -NoPassword
    }
}

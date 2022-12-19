  # Adjust user permissions based on list in text file
        # Read list of admin users from text file
        $admins = Get-Content -Path .\admin.txt

        # Get list of current users on the system
        $users = Get-LocalUser

        # Set permissions for each user
        foreach ($user in $users)
        {
            if ($admins -contains $user.Name)
            {
                # Add user to the Administrators group
                Add-LocalGroupMember -Group "Administrators" -Member $user.Name
            }
            else
            {
                # Remove user from the Administrators group
                Remove-LocalGroupMember -Group "Administrators" -Member

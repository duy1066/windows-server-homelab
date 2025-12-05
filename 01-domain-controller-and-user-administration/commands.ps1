
Paste this:

```powershell
# Rename Server
Rename-Computer -NewName "DC01" -Restart

# Install AD DS Role
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# Promote to Domain Controller
Install-ADDSForest -DomainName "stevenlab.local"

# Create OUs
New-ADOrganizationalUnit -Name "Users" -Path "DC=stevenlab,DC=local"
New-ADOrganizationalUnit -Name "Admins" -Path "DC=stevenlab,DC=local"
New-ADOrganizationalUnit -Name "Computers" -Path "DC=stevenlab,DC=local"

# Create Standard User
New-ADUser -Name "John Doe" -SamAccountName jdoe -AccountPassword (Read-Host -AsSecureString) -Enabled $true

# Create Groups
New-ADGroup -Name "Standard Users" -GroupScope Global -Path "OU=Users,DC=stevenlab,DC=local"
New-ADGroup -Name "IT Admins" -GroupScope Global -Path "OU=Admins,DC=stevenlab,DC=local"


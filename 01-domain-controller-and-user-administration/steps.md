### Overview
This document contains the full step-by-step configuration process for deploying a Windows Server 2022 Domain Controller and creating user accounts, groups, and administrative roles.

---

## 1. Install Windows Server 2022
- Create VM in Hyper-V or VirtualBox
- Assign 4GB RAM, 2 vCPU, 60GB disk
- Install OS from ISO
- Login as local administrator

---

## 2. Configure Network Settings
- Assign a static IP  
- Set Preferred DNS to itself  
- Rename the server

**PowerShell:**
```powershell
Rename-Computer -NewName "DC01" -Restart

## 3. Install Active Directory Domain Services (AD DS)
- Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

## 4. Promote Server to a Domain Controller
- Install-ADDSForest -DomainName "stevenlab.local"

## 5. Create Organizational Units (OUs)
- OU: _Users
- OU: _Computers
- OU: _Admins
- OU: _Service Accounts

## 6. Create User Accounts
- New-ADUser -Name "John Doe" -SamAccountName "jdoe" -AccountPassword (Read-Host -AsSecureString) -Enabled $true

## 7. Create Security Groups
- Groups: "Helpdesk"
- Groups: "IT Admins"
- Group: "Standard Users"

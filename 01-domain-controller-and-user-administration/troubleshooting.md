### Overview
This file lists common issues encountered during the Domain Controller and user administration setup, along with solutions.

---

## Issue: Cannot join domain
**Fix:**  
Ensure DNS on client is set to the DC’s IP address.

---

## Issue: AD tools missing
**Fix:**  
Reinstall AD DS tools:  
`Install-WindowsFeature RSAT-AD-PowerShell`

---

## Issue: User cannot log in
**Fix:**  
Ensure account is enabled and password is set.

---

## Issue: GPO not applying
**Fix:**  
Run: `gpupdate /force`  
Check replication and DNS health.  


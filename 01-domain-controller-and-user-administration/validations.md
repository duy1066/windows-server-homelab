### Overview
This document lists the validation checks confirming that the Domain Controller, users, groups, and administrative roles were configured correctly.

---

## Validation Tests

✔ AD DS installed successfully  
✔ DNS service running  
✔ Domain: **stevenlab.local** created  
✔ OUs visible in Active Directory Users and Computers  
✔ User accounts created successfully  
✔ Groups appear under the correct OU  
✔ Domain logon successful on client device  
✔ Group membership applied correctly  
✔ Admin account has elevated rights  
✔ `gpresult /r` confirms policy application  

---

## Network Validation
- DC responds to ping  
- DNS resolves domain hostnames  
- Client can locate domain controller  


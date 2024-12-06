
$auditRule = New-Object System.Security.AccessControl.RegistryAuditRule(
    "Everyone", 
    "FullControl", 
    "None",
    "None", 
    "Success,Failure"
)

#############################################################################

$acl = Get-Acl -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"

$acl.SetAuditRule($auditRule)

Set-Acl -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -AclObject $acl

#############################################################################

$acl = Get-Acl -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"

$acl.SetAuditRule($auditRule)

Set-Acl -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -AclObject $acl


$acl = Get-Acl -Path "C:\Windows"

$auditRule = New-Object System.Security.AccessControl.FileSystemAuditRule(
    "Everyone", 
    "FullControl", 
    "None",
    "None", 
    "Success,Failure"
)

$acl.AddAuditRule($auditRule)

Set-Acl -Path "C:\Windows" -AclObject $acl

#############################################################################

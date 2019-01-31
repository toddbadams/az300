
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Password"

New-AzureADUser -DisplayName "RBAC Tutorial User" -PasswordProfile $PasswordProfile `
  -UserPrincipalName "rbacuser@example.com" -AccountEnabled $true -MailNickName "rbacuser"

$subScope = "/subscriptions/ed2f3744-ffd1-4df8-a5dd-18314f290150"

$resourceGroupName = "aaj"
$env = "-dv1"
$location = "uksouth"

New-AzureRmRoleAssignment -SignInName rbacuser@example.com `
  -RoleDefinitionName "Reader" `
  -Scope $subScope

New-AzureRmRoleAssignment -SignInName rbacuser@example.com `
  -RoleDefinitionName "Contributor" `
  -ResourceGroupName $resourceGroupName

Get-AzureRmRoleAssignment -SignInName rbacuser@example.com -Scope $subScope
Get-AzureRmRoleAssignment -SignInName rbacuser@example.com -ResourceGroupName $resourceGroupName

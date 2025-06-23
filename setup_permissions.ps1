
# Define variables
$userEmail = 'dave@alongside.cc'      # Replace with your actual email
$resourceGroupName = 'YourResourcie-ai-index-scraper2-southcentral-rgeGroupName'  # Replace with the actual resource group name
$storageAccountName = 'YourStorageAccountName'  # Replace with the actual storage account name
$RoleDefinitionName =  'Storage Blob Data Contributor'


# Retrieve the specific resource by its name
Get-AzResource -Name $resourceName | Format-List

# Get the role definition for the Storage Blob Data Contributor role
$roleDefinition = Get-AzRoleDefinition -Name 'Storage Blob Data Contributor'

# Assign the Storage Blob Data Contributor role to your user account for the specified resource
New-AzRoleAssignment -SignInName $userEmail -RoleDefinitionName $roleDefinition.RoleName -ResourceGroupName $resourceGroupName -ResourceName $storageAccountName -ResourceType "Microsoft.Storage/storageAccounts"
# not currently working 
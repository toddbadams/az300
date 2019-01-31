# Variables for common values
$resourceGroupName = "aajpeering"
$env = "-dv1"
$location = "uksouth"

$vnet1Name = $resourceGroupName + "-vnet1" + $env
$subnet1Name = $resourceGroupName + "-subnet1" + $env
$vm1Name = $resourceGroupName + "-vm1" + $env

$vnet2Name = $resourceGroupName + "-vnet2" + $env
$subnet2Name = $resourceGroupName + "-subnet2" + $env
$vm2Name = $resourceGroupName + "-vm2" + $env

$vnetpeer12Name = $resourceGroupName + "-vnet1-vnet2" + $env
$vnetpeer21Name = $resourceGroupName + "-vnet2-vnet1" + $env



#Create or check for existing resource group
New-AzureRmResourceGroup -Name $resourceGroupName -Location $location


# Create vnet 1
$vnet1 = New-AzureRmVirtualNetwork  `
    -resourceGroup $resourceGroupName  `
    -Location $location `
    -Name $vnet1Name  `
    -AddressPrefix 10.0.0.0/16  

# Create a subnet configuration
$subnet1Config = New-AzureRmVirtualNetworkSubnetConfig `
    -Name $subnet1Name `
    -AddressPrefix 10.0.0.0/24 `
    -VirtualNetwork $vnet1Name

# Write the subnet configuration to the virtual network.
$vnet1 | Set-AzureRmVirtualNetwork

# Create Vm1
New-AzureRmVm `
  -ResourceGroupName $resourceGroupName `
  -Location $location `
  -VirtualNetworkName $vnet1Name  `
  -SubnetName $subnet1Name `
  -ImageName "Win2016Datacenter" `
  -Name  $vm1Name `
  -AsJob



# Create vnet 2
$vnet2 = New-AzureRmVirtualNetwork  `
    -resourceGroup $resourceGroupName  `
    -Location $location `
    -Name $vnet2Name  `
    -AddressPrefix 10.1.0.0/16  

# Create a subnet configuration
$subnet2Config = New-AzureRmVirtualNetworkSubnetConfig `
    -Name $subnet2Name `
    -AddressPrefix 10.1.0.0/24 `
    -VirtualNetwork $vnet2Name

# Write the subnet configuration to the virtual network.
$vnet2 | Set-AzureRmVirtualNetwork



# Create Vm2
New-AzureRmVm `
  -ResourceGroupName $resourceGroupName `
  -Location $location `
  -VirtualNetworkName $vnet2Name  `
  -SubnetName $subnetName `
  -ImageName "Win2016Datacenter" `
  -Name  $vm2Name `
  -AsJob




# Peer vnet 1 to vnet 2
Add-AzureRmVirtualNetworkPeering `
  -Name $vnetpeer12Name `
  -VirtualNetwork $vnet1 `
  -RemoteVirtualNetworkId $vnet2.Id

# Peer vnet 2 to vnet 1
Add-AzureRmVirtualNetworkPeering `
  -Name $vnetpeer21Name `
  -VirtualNetwork $vnet2 `
  -RemoteVirtualNetworkId $vnet1.Id


# get the public IP address of a VM
Get-AzureRmPublicIpAddress `
  -Name $vm1Name `
  -ResourceGroupName $resourceGroupName | Select IpAddress

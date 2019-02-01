# Variables for common values
$resourceGroupName = "aaj"
$env = "-dv1"
$location = "uksouth"
$vmName = $resourceGroupName + "-vm" + $env
$vnetName = $resourceGroupName + "-vnet" + $env
$subnetName = $resourceGroupName + "-subnet" + $env
$nsgRuleName = $resourceGroupName + "-nsgrule" + $env
$nsgName = $resourceGroupName + "-nsg" + $env
$nicName = $resourceGroupName + "-nic" + $env
$publisher = "MicrosoftVisualStudio"
$offer = "VisualStudio"
$sku = "VS-2017-Comm-Latest-WS2016"
$version = "latest"

# Create user object
$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

#Create or check for existing resource group
New-AzureRmResourceGroup `
  -Name $resourceGroupName `
  -Location $location

# Create a subnet configuration
$subnetConfig = New-AzureRmVirtualNetworkSubnetConfig `
  -Name $subnetName `
  -AddressPrefix 192.168.1.0/24

# Create a virtual network
$vnet = New-AzureRmVirtualNetwork `
  -resourceGroup $resourceGroupName `
  -Location $location `
  -Name $vnetName `
  -AddressPrefix 192.168.0.0/16 `
  -Subnet $subnetConfig

# Create a public IP address and specify a DNS name
$pip = New-AzureRmPublicIpAddress `
  -resourceGroup $resourceGroupName `
  -Location $location `
  -Name "mypublicdns$(Get-Random)" `
  -AllocationMethod Static -IdleTimeoutInMinutes 4

# Create an inbound network security group rule for port 3389
$nsgRuleRDP = New-AzureRmNetworkSecurityRuleConfig `
  -Name $nsgRuleName  `
  -Protocol Tcp `
  -Direction Inbound `
  -Priority 1000 `
  -SourceAddressPrefix * `
  -SourcePortRange * `
  -DestinationAddressPrefix * `
  -DestinationPortRange 3389 -Access Allow

# Create a network security group
$nsg = New-AzureRmNetworkSecurityGroup `
  -resourceGroup $resourceGroupName `
  -Location $location `
  -Name $nsgName  `
  -SecurityRules $nsgRuleRDP

# Create a virtual network card and associate with public IP address and NSG
$nic = New-AzureRmNetworkInterface `
  -Name $nicName `
  -resourceGroup $resourceGroupName `
  -Location $location `
  -SubnetId $vnet.Subnets[0].Id `
  -PublicIpAddressId $pip.Id `
  -NetworkSecurityGroupId $nsg.Id

# Create a virtual machine configuration
$vmConfig = New-AzureRmVMConfig -VMName $vmName -VMSize Standard_D2_v2 | `
Set-AzureRmVMOperatingSystem -Windows -ComputerName $vmName -Credential $cred | `
Set-AzureRmVMSourceImage -PublisherName $publisher -Offer $offer -Skus $sku -Version $version | `
Add-AzureRmVMNetworkInterface -Id $nic.Id

# Create a virtual machine
New-AzureRmVM -resourceGroup $resourceGroupName -Location $location -VM $vmConfig
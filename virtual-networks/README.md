# Virtual Networks

**[Network virtualization](https://en.wikipedia.org/wiki/Network_virtualization)** is the process of combining hardware and software network resources and network functionality into a single, software-based administrative entity, a virtual network. 

A **[Virtual Network](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview)** enables many types of Azure resources, such as Azure Virtual Machines (VM), to securely communicate with each other, the internet, and on-premises networks. A virtual network is scoped to a single region; however, multiple virtual networks from different regions can be connected together using Virtual Network Peering.

For each virtual network you can:

- Specify a custom private IP address space using public and private addresses. Azure assigns resources in a virtual network a private IP address from the address space that you assign.
- Segment the virtual network into one or more subnets and allocate a portion of the virtual network's address space to each subnet.
- Use Azure-provided name resolution, or specify your own DNS server, for use by resources in a virtual network.

## Communicate between Azure resources

- Through a virtual network: deploy VMs, and [other types](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-for-azure-services).

- Through a [virtual network service endpoint](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-service-endpoints-overview): Extend vnet private address space and the identity to Azure service resources over a direct connection. 

## Communicate with on-premises resources

- [Point-to-site VPN](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpngateways?toc=%2fazure%2fvirtual-network%2ftoc.json#P2S): Established between a virtual network and a single computer in your network. 

![point-to-site VPN](https://docs.microsoft.com/en-us/azure/vpn-gateway/media/vpn-gateway-about-vpngateways/point-to-site.png)

- [Site-to-site VPN](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpngateways?toc=%2fazure%2fvirtual-network%2ftoc.json#s2smulti): Established between your on-premises VPN device and an Azure VPN Gateway that is deployed in a virtual network.

![site-to-site VPN](https://docs.microsoft.com/en-us/azure/vpn-gateway/media/vpn-gateway-about-vpngateways/vpngateway-site-to-site-connection-diagram.png)

- [Azure ExpressRoute](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpngateways?toc=%2fazure%2fvirtual-network%2ftoc.json#ExpressRoute): This connection is private and traffic does not go over the internet. 

![ExpressRoute](https://docs.microsoft.com/en-us/azure/vpn-gateway/media/vpn-gateway-about-vpngateways/expressroute-vpngateway-coexisting-connections-diagram.png)


[![Create a Virtual Network using the Azure Portal](http://img.youtube.com/vi/uJqpzDVcT3Q/0.jpg)](http://www.youtube.com/watch?v=uJqpzDVcT3Q)

[![Create a Virtual Network (PowerShell and CLI)](http://img.youtube.com/vi/3ObmJQJmTMQ/0.jpg)](http://www.youtube.com/watch?v=3ObmJQJmTMQ)




powershell
nics (vms with multi nics)
ip addresses
routing
vnet to vnet  - peering / vpn

monitoring & health

Create and configure VNET peering
create and configure VNET to VNET
verify virtual network connectivity
create virtual network gateway

Configure private and public IP addresses, network routes, network interface, subnets, and virtual network


Configure application gateway and load balancing rules
implement front end IP configurations
manage application load balancing

Create and configure Azure VPN Gateway
create and configure site to site VPNconfigure Express Route
verify on premises connectivity
manage on-premise connectivity with Azure
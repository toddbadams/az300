# Virtual Machines

| Type                     | Windows & Linux Sizes          | Description                                                                                                                                                                                     |
|--------------------------|--------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| General purpose          | B, Dsv3, Dv3, DSv2, Dv2, Av2   | Balanced CPU-to-memory ratio. Ideal for testing and development, small to medium databases, and low to medium traffic web servers.                                                              |
| Compute optimized        | Fsv2, Fs, F                    | High CPU-to-memory ratio. Good for medium traffic web servers, network appliances, batch processes, and application servers.                                                                    |
| Memory optimized         | Esv3, Ev3, M, GS, G, DSv2, Dv2 | High memory-to-CPU ratio. Great for relational database servers, medium to large caches, and in-memory analytics.                                                                               |
| Storage optimized        | Ls                             | High disk throughput and IO. Ideal for Big Data, SQL, and NoSQL databases.                                                                                                                      |
| GPU                      | NV, NC, NCv2, NCv3, ND         | Specialized virtual machines targeted for heavy graphic rendering and video editing, as well as model training and inferencing (ND) with deep learning. Available with single or multiple GPUs. |
| High performance compute | H                              | Our fastest and most powerful CPU virtual machines with optional high-throughput network interfaces (RDMA).                                                                                     |

## Azure SLA for VMs

Azure ensures that the VMs you place within an Availability Set run across multiple physical servers, compute racks, storage units, and network switches.

- Fault Domains (2 default) – across compute racks, separate power
- Update Domains (5 default) – Within an availability set, individual VMs are spread across up to 20 update domains (UDs). During scheduled maintenance, only a single update domain is impacted at any given time.
- Managed Disks (default) – auto creation and scaling

|                   | Uptime %           | Downtime min/month | Downtime hr/yr |
|-------------------|--------------------|--------------------|--------|
| VM                | 99.9  (three nines)        | 44             | 9      |
| Availability Set  | 99.95 (three and one half nines)     22             | 4.4      |
| Availability Zone | 99.99 (four nines)         | 4.4            | 53 min |

[VM SLA](https://azure.microsoft.com/en-gb/support/)
[Wikipedia High Availability](https://en.wikipedia.org/wiki/High_availability)

## VM Scale Sets

A virtual machine scale set allows the deployment and management a set of identical, auto-scaling virtual machines. You can scale the number of VMs in the scale set manually or define rules to auto-scale based on resource usage such as CPU, memory demand, or network traffic.
The scale set is automatically deployed across update domains, like VMs in an availability set. Just like with availability sets, with scale sets only a single update domain is impacted at any given time during scheduled maintenance.

powershell / arm / custom images
windows / linux
backup / restore
monitoring & health

Create and configure a Virtual Machine (VM) for Windows and Linux
May include but not limited to: Configure high availability; configure monitoring, networking, storage, and virtual machine size; deploy and configure scale sets
Automate deployment of Virtual Machines (VMs)
May include but not limited to: Modify Azure Resource Manager (ARM) template; configure location of new VMs; configure VHD template; deploy from template; save a deployment as an ARM template; deploy Windows and Linux VMs


## Multiple NICs in Virtual Machines

A network interface enables an Azure virtual machine to communicate with internet, Azure, and on-premises resources. A VM can have [one or more network interfaces](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-network-interface-vm).  

The VM size determines the number of NICS that you can create for a VM.  

The address for each NIC on each VM must be in a subnet and multiple NICs on a single VM can each be assigned addresses that are in the same subnet.

[![Using Multiple NICs](http://img.youtube.com/vi/hEpW6-TmdXk/0.jpg)](http://www.youtube.com/watch?v=hEpW6-TmdXk)

[![Using Multiple NICs](http://img.youtube.com/vi/FWIgU0yhM4o/0.jpg)](http://www.youtube.com/watch?v=FWIgU0yhM4o)

## IP Addressing

You can assign [IP addresses](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-ip-addresses-overview-arm) to Azure resources to communicate with other Azure resources, your on-premises network, and the Internet. 

[![Configuring IP Settings](http://img.youtube.com/vi/v2lLnIR55Ng/0.jpg)](http://www.youtube.com/watch?v=v2lLnIR55Ng)

### Public IP addresses

Used for communication with the Internet, including Azure public-facing services.

IP addresses can also be statically assigned or dynamically assigned. Static IP addresses do not change and are best for certain situations such as:

- DNS name resolution, where a change in the IP address would require updating host records.
- IP address-based security models which require apps or services to have a static IP address.
- SSL certificates linked to an IP address.
- Firewall rules that allow or deny traffic using IP address ranges.
- Role-based VMs such as Domain Controllers and DNS servers.

| Public IP addresses | IP address association | Dynamic | Static | 
|---------------------|---------------------|---------------------|---------------------| 
| Virtual Machine | NIC | Yes | Yes | 
| Load Balancer Front-end configuration | Yes | Yes | 
| VPN Gateway | Gateway IP configuration | Yes | No | 
| Application Gateway | Front-end configuration | Yes | No | 

[Create a VM with a static public IP address using the Azure portal](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-deploy-static-pip-arm-portal)

[Create a VM with a static public IP address using PowerShell](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-deploy-static-pip-arm-ps)

[Create a VM with a static public IP address using the Azure CLI](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-deploy-static-pip-arm-cli)

[Deploy an Azure Virtual Machine using C# and a Resource Manager template](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/csharp-template)

### Private IP addresses
Used for communication within an Azure virtual network (VNet), and your on-premises network, when you use a VPN gateway or ExpressRoute circuit to extend your network to Azure.

| Public IP addresses | IP address association | Dynamic | Static | 
|---------------------|---------------------|---------------------|---------------------| 
| Virtual Machine | NIC | Yes | Yes | 
| Load Balancer Front-end configuration | Yes | Yes | 
| Application Gateway | Front-end configuration | Yes | Yes | 

[Configure private IP addresses for a virtual machine using the Azure portal](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-static-private-ip-arm-pportal)

[Configure private IP addresses for a virtual machine using PowerShell](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-static-private-ip-arm-ps)

[Configure private IP addresses for a virtual machine using the Azure CLI](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-static-private-ip-arm-cli)

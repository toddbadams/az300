# Microsoft Azure Architect Technologies AZ-300

This repo contains my notes while studing for the [AZ-300](https://www.microsoft.com/en-us/learning/exam-az-300.aspx) exam.  It is not inclusive of everthing that is required to pass the exam.

## my notes and labs
- [containers](./containers)
- [identity](./identity)
- [logic apps](./logic-apps)
- [storage](./storage)
- [virtual machines](./virtual-machines)
- [virtual networks](./virtual-networks)


## some relevant research

- [Performance Anomaly Detection in Multi-Server Distributed Systems](https://www.microsoft.com/en-us/research/publication/pad-performance-anomaly-detection-in-multi-server-distributed-systems/)
- [Azure Architecture Center](https://docs.microsoft.com/en-us/azure/architecture/)
- [Azure Quickstart Templates](https://github.com/Azure/azure-quickstart-templates)
- [Pluralsight course](https://www.pluralsight.com/paths/microsoft-azure-architect-technologies-az-300)

## Ignite 2018 talk on exam

[![AZ-300 Technologies](http://img.youtube.com/vi/u1myyD_cGVQ/0.jpg)](http://www.youtube.com/watch?v=u1myyD_cGVQ)

# Objectives

## Deploy and Configure Infrastructure (25-30%)
Analyze resource utilization and consumption
- [Configure diagnostic settings on resources](http://bit.ly/2NoiuHA)
- [Create baseline for resources](http://bit.ly/2NtxyUp)
- [Create and rest alerts](http://bit.ly/2LgQDMe)
- [Analyze alerts across subscription](http://bit.ly/2O04aWG)
- [Analyze metrics across subscription](http://bit.ly/2mnXKUQ)
- [Create action groups](http://bit.ly/2JuB1Qh)
- [Monitor for unused resources](http://bit.ly/2JsldgR)
- [Monitor spend](http://bit.ly/2LtfTvD)
- [Report on spend](http://bit.ly/2LgOuju)
- [Utilize Log Search query functions](http://bit.ly/2KZvEy5)
- [View alerts in Log Analytics](http://bit.ly/2JB7Gnm)

Create and Configure storage accounts
- [Configure network access to the storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-network-security)  - virtual networks
- [Create and configure storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account)
- [Generate shared access signature](https://docs.microsoft.com/en-gb/azure/storage/common/storage-dotnet-shared-access-signature-part-1)
- [Install and use Azure Storage Explorer](https://docs.microsoft.com/en-us/azure/vs-azure-tools-storage-manage-with-storage-explorer?tabs=windows)
- [Manage access keys](https://docs.microsoft.com/en-us/azure/storage/common/storage-security-guide)
- [Monitor activity log by using Log Analytics](https://docs.microsoft.com/en-us/azure/storage/common/storage-monitoring-diagnosing-troubleshooting?toc=%2fazure%2fstorage%2fqueues%2ftoc.json)
- [Implement Azure storage replication](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy?toc=%2fazure%2fstorage%2fqueues%2ftoc.json)

Create and configure a Virtual Machine (VM) for Windows and Linux
- [Configure high availability](http://bit.ly/2y0f7AC)
- [Configure monitoring, networking, storage, and virtual machine size](http://bit.ly/2xYN3xA)
- [Deploy and configure scale sets](http://bit.ly/2xYO5cW)

Automate deployment of Virtual Machines (VMs)
- [Modify Azure Resource Manager (ARM) template](http://bit.ly/2y0Nzej)
- [Configure location of new VMs](http://bit.ly/2xYOxb8)
- [Configure VHD template](http://bit.ly/2y0frPQ)
- [Deploy from template](http://bit.ly/2xZkJuN)
- [Save a deployment as an ARM template](http://bit.ly/2y2TmjM)
- Deploy [Windows](Http://bit.ly/2xZkJuN) and [Linux VMs](http://bit.ly/2y2TdfU)

Create connectivity between virtual networks
- [Create and configure VNET peering](http://bit.ly/2NqMu5P)
- [Create and configure VNET to VNET](http://bit.ly/2uwAd8J)
- [Verify virtual network connectivity](http://bit.ly/2muFbP7)
- [create virtual network gateway](http://bit.ly/2LpVkzQ)

Implement and manage virtual networking
- [Configure private and public IP addresses, network routes, network interface, subnets, and virtual network](http://bit.ly/2xUCgUQ)

Manage Azure Active Directory (AD)
- [Add custom domains](http://bit.ly/2LjoCn3)
- Configure [Azure AD Identity Protection](http://bit.ly/2LnOcYk), [Azure AD Join](http://bit.ly/2uHGuOl), and [Enterprise State Roaming](http://bit.ly/2zPcAxg)
- [Configure self-service password reset](http://bit.ly/2NYOAei)
- [Implement conditional access policies](http://bit.ly/2Jvj8kj)
- [Manage multiple directories](http://bit.ly/2LqR5UW)
- [Perform an access review](http://bit.ly/2zTTW7E)

Implement and manage hybrid identities
- [Install and configure Azure AD Connect](http://bit.ly/2Jwvqce)
- [Configure federation and single sign-on](http://bit.ly/2zNeiPM)
- [Manage Azure AD Connect](http://bit.ly/2LqmoiE)
- [Manage password sync and writeback](http://bit.ly/2zOrKCT

## Implement Workloads and Security (20-25%)

Migrate servers to Azure
- [Migrate by using Azure Site Recovery (ASR)](http://bit.ly/2uvZYGl)
- [Migrate using P2V](http://bit.ly/2uxziVv)
- [Create a backup vault](http://bit.ly/2uvGBNw)
- [Prepare source and target environments](http://bit.ly/2usAR7h)
- [Backup and restore data](http://bit.ly/2uvhBGc)
- [Deploy Azure Site Recovery (ASR) agent](http://bit.ly/2uxxxYr)
- [Prepare virtual network](http://bit.ly/2uw25Kh)

Configure serverless computing
- [Create and manage objects](http://bit.ly/2NrsPTc)
- [Manage a Logic App resource](http://bit.ly/2NuMkdD)
- [Manage Azure Function app settings](http://bit.ly/2NqIF0e)
- [Manage Event Grid](http://bit.ly/2Nruw2U)
- [Manage Service Bus](http://bit.ly/2NvMaTp)

Implement application load balancing
- [Configure application gateway and load balancing rules](http://bit.ly/2Ntkuy9)
- [Implement front end IP configurations](http://bit.ly/2y0s5yk)
- [Manage application load balancing](http://bit.ly/2NtrQSl)

Integrate on-premises network with Azure virtual network
- [Create and configure Azure VPN Gateway](http://bit.ly/2LpVkzQ)
- [Create and configure site to site VPN](http://bit.ly/2FvCkjs)
- [Configure Express Route](http://bit.ly/2Fu5gIB)
- [Verify on-premises connectivity](http://bit.ly/2muFbP7)
- [Manage on-premise connectivity with Azure](http://bit.ly/2FwwZbB)

Manage role-based access control (RBAC)
- [Create a custom role](http://bit.ly/2NthKkw)
- [Configure access to Azure resources by assigning roles](http://bit.ly/2Nwo4rB)
- [Configure management access to Azure](http://bit.ly/2LK7Evi)
- [Troubleshoot RBAC](http://bit.ly/2FvkFsf)
- [Implement RBAC policies](http://bit.ly/2Nwo4rB)
- [Assign RBAC roles](http://bit.ly/2NoMTFy

Implement Multi-Factor Authentication (MFA)
- [Enable MFA for an Azure tenant](http://bit.ly/2Ntkuy9)
- [Configure user accounts for MFA](http://bit.ly/2NuNdCZ)
- [Configure fraud alerts](http://bit.ly/2NtrQSl)
- [Configure bypass options](http://bit.ly/2NqKlqy)
- [Configure trusted IPs](http://bit.ly/2NqLcYi)
- [Configure verification methods](http://bit.ly/2NuohLS)

## Create and Deploy Apps (5-10%)

Create web apps by using PaaS
- [Create an Azure app service Web App](http://bit.ly/2FwLGLF)
- [Create documentation for the API](http://bit.ly/2FwwEWn)
- [Create an App Service Web App for containers](http://bit.ly/2FskQnY)
- [Create an App Service background task by using WebJobs](http://bit.ly/2Fu4XNX)
- [Enable diagnostics logging](http://bit.ly/2FueHHX)

Design and develop apps that run in containers
- [Configure diagnostic settings on resources](http://bit.ly/2FvtylC)
- [Create a container image by using a Docker file](http://bit.ly/2FuoT3a)
- [Create an Azure Container Service (ACS/AKS)](http://bit.ly/2Fueogh http://bit.ly/2FueO6m)
- [Publish an image to the Azure Container Registry](http://bit.ly/2FsNnKh)
- [Implement an application that runs on an Azure Container Instance](http://bit.ly/2FtpMsU)
- [Manage container settings by using code](http://bit.ly/2Fup4LS)

## Implement Authentication and Secure Data (5-10%)

Implement authentication
- [Implement authentication by using certificates, forms-based authentication, tokens, or Windows-integrated authentication](http://bit.ly/2yaIWyp http://bit.ly/2ykLLNF http://bit.ly/2ybzWZP)
- [Implement multi-factor authentication by using Azure AD options](http://bit.ly/2y7n474)
- [Implement OAuth2 authentication](http://bit.ly/2Fu3wix)
- [Implement Managed Service Identity (MSI) Service Principal authentication](http://bit.ly/2FtPk9e)

Implement secure data solutions
- [Encrypt and decrypt data at rest and in transit](http://bit.ly/2ykKndV)
- [Encrypt data with Always Encrypted](http://bit.ly/2yeHjQ7)
- [Implement Azure Confidential Compute and SSL/TLS communications](http://bit.ly/2ycu6Yk)
- [Create, read, update, and delete keys, secrets, and certificates by using the KeyVault API](http://bit.ly/2y8JGUN)

## Develop for the Cloud (20-25%)
Configure a message-based integration architecture
- [Configure an app or service to send emails, Event Grid, and the Azure Relay Service](http://bit.ly/2y12ANe)
- [Create and configure Notification Hub, Event Hub, and Service Bus](http://bit.ly/2y545Ky)
- [Configure queries across multiple products](http://bit.ly/2y2q6tn)

Develop for autoscaling
- [Implement autoscaling rules and patterns schedule, operational/system metrics, code that addresses singleton application instances](http://bit.ly/2y0B4zC)
- [Implement code that addresses transient state](http://bit.ly/2y2lCmu)

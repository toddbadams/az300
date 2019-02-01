# Microsoft Azure Architect Technologies AZ-300

This repo contains my notes while studing for the [AZ-300](https://www.microsoft.com/en-us/learning/exam-az-300.aspx) exam.  

## my notes and labs
1. [containers](./containers)
1. [identity](./identity)
1. [logic apps](./logic-apps)
1. [storage](./storage)
1. [virtual machines](./virtual-machines)
1. [virtual networks](./virtual-networks)


## some relevant research

1. [Performance Anomaly Detection in Multi-Server Distributed Systems](https://www.microsoft.com/en-us/research/publication/pad-performance-anomaly-detection-in-multi-server-distributed-systems/)
1. [Azure Architecture Center](https://docs.microsoft.com/en-us/azure/architecture/)
1. [Azure Quickstart Templates](https://github.com/Azure/azure-quickstart-templates)
1. [Pluralsight course](https://www.pluralsight.com/paths/microsoft-azure-architect-technologies-az-300)
1. [Splunk with Azure](https://www.splunk.com/blog/2018/04/20/splunking-microsoft-azure-monitor-data-part-1-azure-setup.html#)

## Ignite 2018 talk on exam

[![AZ-300 Technologies](http://img.youtube.com/vi/u1myyD_cGVQ/0.jpg)](http://www.youtube.com/watch?v=u1myyD_cGVQ)

# Objectives

## Deploy and Configure Infrastructure (25-30%)
Analyze resource utilization and consumption
1. [Configure diagnostic settings on resources](http://bit.ly/2NoiuHA)
1. [Create baseline for resources](http://bit.ly/2NtxyUp)
1. [Create and rest alerts](http://bit.ly/2LgQDMe)
1. [Analyze alerts across subscription](http://bit.ly/2O04aWG)
1. [Analyze metrics across subscription](http://bit.ly/2mnXKUQ)
1. [Create action groups](http://bit.ly/2JuB1Qh)
1. [Monitor for unused resources](http://bit.ly/2JsldgR)
1. [Monitor spend](http://bit.ly/2LtfTvD)
1. [Report on spend](http://bit.ly/2LgOuju)
1. [Utilize Log Search query functions](http://bit.ly/2KZvEy5)
1. [View alerts in Log Analytics](http://bit.ly/2JB7Gnm)

✔️ Create and Configure storage accounts
1. [Configure network access to the storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-network-security)  1. virtual networks
1. [Create and configure storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account)
1. [Generate shared access signature](https://docs.microsoft.com/en-gb/azure/storage/common/storage-dotnet-shared-access-signature-part-1)
1. [Install and use Azure Storage Explorer](https://docs.microsoft.com/en-us/azure/vs-azure-tools-storage-manage-with-storage-explorer)
1. [Manage access keys](https://docs.microsoft.com/en-us/azure/storage/common/storage-security-guide)
1. [Monitor activity log by using Log Analytics](https://docs.microsoft.com/en-us/azure/storage/common/storage-monitoring-diagnosing-troubleshooting)
1. [Implement Azure storage replication](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy)

Create and configure a Virtual Machine (VM) for Windows and Linux
1. [Configure high availability](http://bit.ly/2y0f7AC)
1. [Configure monitoring, networking, storage, and virtual machine size](http://bit.ly/2xYN3xA)
1. [Deploy and configure scale sets](http://bit.ly/2xYO5cW)

Automate deployment of Virtual Machines (VMs)
1. [Modify Azure Resource Manager (ARM) template](http://bit.ly/2y0Nzej)
1. [Configure location of new VMs](http://bit.ly/2xYOxb8)
1. [Configure VHD template](http://bit.ly/2y0frPQ)
1. [Deploy from template](http://bit.ly/2xZkJuN)
1. [Save a deployment as an ARM template](http://bit.ly/2y2TmjM)
1. Deploy [Windows](Http://bit.ly/2xZkJuN) and [Linux VMs](http://bit.ly/2y2TdfU)

Create connectivity between virtual networks
1. [Create and configure VNET peering](http://bit.ly/2NqMu5P)
1. [Create and configure VNET to VNET](http://bit.ly/2uwAd8J)
1. [Verify virtual network connectivity](http://bit.ly/2muFbP7)
1. [create virtual network gateway](http://bit.ly/2LpVkzQ)

Implement and manage virtual networking
1. [Configure private and public IP addresses, network routes, network interface, subnets, and virtual network](http://bit.ly/2xUCgUQ)

Manage Azure Active Directory (AD)
1. [Add custom domains](http://bit.ly/2LjoCn3)
1. Configure [Azure AD Identity Protection](http://bit.ly/2LnOcYk), [Azure AD Join](http://bit.ly/2uHGuOl), and [Enterprise State Roaming](http://bit.ly/2zPcAxg)
1. [Configure self-service password reset](http://bit.ly/2NYOAei)
1. [Implement conditional access policies](http://bit.ly/2Jvj8kj)
1. [Manage multiple directories](http://bit.ly/2LqR5UW)
1. [Perform an access review](http://bit.ly/2zTTW7E)

Implement and manage hybrid identities
1. [Install and configure Azure AD Connect](http://bit.ly/2Jwvqce)
1. [Configure federation and single sign-on](http://bit.ly/2zNeiPM)
1. [Manage Azure AD Connect](http://bit.ly/2LqmoiE)
1. [Manage password sync and writeback](http://bit.ly/2zOrKCT

## Implement Workloads and Security (20-25%)

Migrate servers to Azure
1. [Migrate by using Azure Site Recovery (ASR)](http://bit.ly/2uvZYGl)
1. [Migrate using P2V](http://bit.ly/2uxziVv)
1. [Create a backup vault](http://bit.ly/2uvGBNw)
1. [Prepare source and target environments](http://bit.ly/2usAR7h)
1. [Backup and restore data](http://bit.ly/2uvhBGc)
1. [Deploy Azure Site Recovery (ASR) agent](http://bit.ly/2uxxxYr)
1. [Prepare virtual network](http://bit.ly/2uw25Kh)

Configure serverless computing
1. [Create and manage objects](http://bit.ly/2NrsPTc)
1. [Manage a Logic App resource](http://bit.ly/2NuMkdD)
1. [Manage Azure Function app settings](http://bit.ly/2NqIF0e)
1. [Manage Event Grid](http://bit.ly/2Nruw2U)
1. [Manage Service Bus](http://bit.ly/2NvMaTp)

Implement application load balancing
1. [Configure application gateway and load balancing rules](http://bit.ly/2Ntkuy9)
1. [Implement front end IP configurations](http://bit.ly/2y0s5yk)
1. [Manage application load balancing](http://bit.ly/2NtrQSl)

Integrate on-premises network with Azure virtual network
1. [Create and configure Azure VPN Gateway](http://bit.ly/2LpVkzQ)
1. [Create and configure site to site VPN](http://bit.ly/2FvCkjs)
1. [Configure Express Route](http://bit.ly/2Fu5gIB)
1. [Verify on-premises connectivity](http://bit.ly/2muFbP7)
1. [Manage on-premise connectivity with Azure](http://bit.ly/2FwwZbB)

Manage role-based access control (RBAC)
1. [Create a custom role](http://bit.ly/2NthKkw)
1. [Configure access to Azure resources by assigning roles](http://bit.ly/2Nwo4rB)
1. [Configure management access to Azure](http://bit.ly/2LK7Evi)
1. [Troubleshoot RBAC](http://bit.ly/2FvkFsf)
1. [Implement RBAC policies](http://bit.ly/2Nwo4rB)
1. [Assign RBAC roles](http://bit.ly/2NoMTFy

Implement Multi-Factor Authentication (MFA)
1. [Enable MFA for an Azure tenant](http://bit.ly/2Ntkuy9)
1. [Configure user accounts for MFA](http://bit.ly/2NuNdCZ)
1. [Configure fraud alerts](http://bit.ly/2NtrQSl)
1. [Configure bypass options](http://bit.ly/2NqKlqy)
1. [Configure trusted IPs](http://bit.ly/2NqLcYi)
1. [Configure verification methods](http://bit.ly/2NuohLS)

## Create and Deploy Apps (5-10%)

Create web apps by using PaaS
1. [Create an Azure app service Web App](http://bit.ly/2FwLGLF)
1. [Create documentation for the API](http://bit.ly/2FwwEWn)
1. [Create an App Service Web App for containers](http://bit.ly/2FskQnY)
1. [Create an App Service background task by using WebJobs](http://bit.ly/2Fu4XNX)
1. [Enable diagnostics logging](http://bit.ly/2FueHHX)

Design and develop apps that run in containers
1. [Configure diagnostic settings on resources](http://bit.ly/2FvtylC)
1. [Create a container image by using a Docker file](http://bit.ly/2FuoT3a)
1. [Create an Azure Container Service (ACS/AKS)](http://bit.ly/2Fueogh http://bit.ly/2FueO6m)
1. [Publish an image to the Azure Container Registry](http://bit.ly/2FsNnKh)
1. [Implement an application that runs on an Azure Container Instance](http://bit.ly/2FtpMsU)
1. [Manage container settings by using code](http://bit.ly/2Fup4LS)

## Implement Authentication and Secure Data (5-10%)

Implement authentication
1. [Implement authentication by using certificates, forms-based authentication, tokens, or Windows-integrated authentication](http://bit.ly/2yaIWyp http://bit.ly/2ykLLNF http://bit.ly/2ybzWZP)
1. [Implement multi-factor authentication by using Azure AD options](http://bit.ly/2y7n474)
1. [Implement OAuth2 authentication](http://bit.ly/2Fu3wix)
1. [Implement Managed Service Identity (MSI) Service Principal authentication](http://bit.ly/2FtPk9e)

Implement secure data solutions
1. [Encrypt and decrypt data at rest and in transit](http://bit.ly/2ykKndV)
1. [Encrypt data with Always Encrypted](http://bit.ly/2yeHjQ7)
1. [Implement Azure Confidential Compute and SSL/TLS communications](http://bit.ly/2ycu6Yk)
1. [Create, read, update, and delete keys, secrets, and certificates by using the KeyVault API](http://bit.ly/2y8JGUN)

## Develop for the Cloud (20-25%)
Configure a message-based integration architecture
1. [Configure an app or service to send emails, Event Grid, and the Azure Relay Service](http://bit.ly/2y12ANe)
1. [Create and configure Notification Hub, Event Hub, and Service Bus](http://bit.ly/2y545Ky)
1. [Configure queries across multiple products](http://bit.ly/2y2q6tn)

Develop for autoscaling
1. [Implement autoscaling rules and patterns schedule, operational/system metrics, code that addresses singleton application instances](http://bit.ly/2y0B4zC)
1. [Implement code that addresses transient state](http://bit.ly/2y2lCmu)


# Products

1. [Active Directory (AAD)](https://docs.microsoft.com/en-us/azure/active-directory/)
1. [App Service](https://docs.microsoft.com/en-us/azure/app-service/)
1. [Batch](https://docs.microsoft.com/en-us/azure/batch/)
1. [Container Registry](https://docs.microsoft.com/en-us/azure/container-registry/)
1. [Event Grid](https://docs.microsoft.com/en-us/azure/event-grid/) 
1. [Event Hubs](https://docs.microsoft.com/en-us/azure/event-hubs)
1. [Function Apps](https://docs.microsoft.com/en-us/azure/azure-functions/)
1. [IoT Hub](https://docs.microsoft.com/en-us/azure/iot-hub/) 
1. [Kubernetes Service](https://docs.microsoft.com/en-us/azure/aks/)
1. [Logic Apps](https://docs.microsoft.com/en-us/azure/logic-apps/)
1. [Monitor](https://docs.microsoft.com/en-us/azure/azure-monitor/)
1. [Notification Hubs](https://docs.microsoft.com/en-us/azure/notification-hubs/)
1. [SendGrid](https://docs.microsoft.com/en-us/azure/sendgrid-dotnet-how-to-send-email)
1. [Service Bus Messaging](https://docs.microsoft.com/en-us/azure/service-bus-messaging/)
1. [Service Bus Relay](https://docs.microsoft.com/en-us/azure/service-bus-relay/)
1. [Site Recovery](https://docs.microsoft.com/en-us/azure/site-recovery/)
1. [Storage](https://docs.microsoft.com/en-us/azure/storage) 
1. [Virtual Machines](https://docs.microsoft.com/en-us/azure/virtual-machines/)
1. [Virtual Network](https://docs.microsoft.com/en-us/azure/virtual-network/)
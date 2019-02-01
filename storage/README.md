
# Azure Storage

[Azure Storage](https://docs.microsoft.com/en-us/azure/storage) offers three types of storage accounts:

- **v2**. blobs, files, queues, and tables. Recommended for most scenarios using Azure Storage.
- **v1**. Legacy account type for blobs, files, queues, and tables. 
- **Blob**. Blob-only storage accounts. Use general-purpose v2 accounts instead when possible.


| type               | services                           | tiers             | access tiers       | Replication            | Deployment                |
|--------------------|------------------------------------|-------------------|--------------------|------------------------|---------------------------|
| GPv2 | Blob, File, Queue, Table, and Disk | Standard, Premium | Hot, Cool, Archive | LRS, ZRS4, GRS, RA-GRS | Resource Manager          |
| GPv1 | Blob, File, Queue, Table, and Disk | Standard, Premium | N/A                | LRS, GRS, RA-GRS       | Resource Manager, Classic |
| Blob storage       | Blob (block and append only)       | Standard          | Hot, Cool, Archive | LRS, GRS, RA-GRS       | Resource Manager          |

- All storage accounts are encrypted using Storage Service Encryption (SSE) for data at rest
- The Archive tier is available at level of an individual blob only, not at the storage account level. Only block blobs and append blobs can be archived. [Hot, Cool, and Archive storage tiers](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-storage-tiers)


General-purpose storage account two performance tiers:

- **Standard**. magnetic drives (HDD), lowest cost per GB. 
- **Premium**. solid state drives (SSD) and offer consistent low-latency performance.

NOT possible to convert a Standard to Premium or vice versa. Must create and copy data.

Can configure [custom domain names](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-custom-domain-name) accessing blob content instead of using the Azure URLs. 

**LAB**. [Create a storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json)

## Azure Storage Redundancy

- [Locally redundant storage (LRS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy-lrs)
- [Zone-redundant storage (ZRS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy-zrs)
- [Geo-redundant storage (GRS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy-grs)
- [Read-access geo-redundant storage (RA-GRS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy-grs#read-access-geo-redundant-storage)

| Scenario                                                                    |        LRS       |  ZRS  |        GRS       |      RA-GRS      |
|-----------------------------------------------------------------------------|:----------------:|:-----:|:----------------:|:----------------:|
| Node unavailability within a data center                                    |        ✔️        |  ✔️   |        ✔️        |        ✔️        |
| An entire data center (zonal or non-zonal) unavailable                      |                |  ✔️   |        ✔️        |        ✔️        |
| A region-wide outage                                                        |                |     |        ✔️        |        ✔️        |
| Read access (in a remote, geo-replicated region) region-wide unavailability |               |     |               |        ✔️        |
| durability (9's)                                                            |        11        |   12  |        16        |        16        |
| account types                                                               | GPv2, GPv1, Blob |  GPv2 | GPv2, GPv1, Blob | GPv2, GPv1, Blob |
| read SLA                                                                    |       99.9%      | 99.9% |       99.9%      |      99.99%      |
| cool access tier read SLA                                                   |        99%       |  99%  |        99%       |       99.9%      |
| write SLA                                                                   |       99.9%      | 99.9% |       99.9%      |       99.9%      |
| cool access tier write SLA                                                  |        99%       |  99%  |        99%       |        99%       |
 
 Can change replication strategy without down time.

## SAS
A [shared access signature (SAS)](https://docs.microsoft.com/en-gb/azure/storage/common/storage-dotnet-shared-access-signature-part-1) provides you with a way to grant limited access to objects in your storage account to other clients, without exposing your account key.  A SAS gives you granular control  including:

- The valid interval (start and expiry).
- The permissions granted.
- An optional IP address or range of IP addresses.
- The optional protocol. 

Two typical design patterns:
1.  Clients upload and download data via a front-end proxy service.
1.  A lightweight service authenticates the client as needed and then generates a SAS.

Two types of shared access signatures:
1. The service SAS delegates access to a resource in just one of the storage services: the Blob, Queue, Table, or File service.
1. The account SAS delegates access to resources in one or more of the storage services. 

# Storage Explorer

[Azure Storage Explorer](https://docs.microsoft.com/en-us/azure/vs-azure-tools-storage-manage-with-storage-explorer?tabs=windows) allows;

- Access multiple accounts and subscriptions.
- Create, delete, view, and edit storage resources.
- View and edit Blob, Queue, Table, File, Cosmos DB storage and Data Lake Storage.
- Obtain shared access signature (SAS) keys.
- Available for Windows, Mac, and Linux.

[![Microsoft’s Azure Storage Explorer](http://img.youtube.com/vi/Rcw9tVXxmKk/0.jpg)](http://www.youtube.com/watch?v=Rcw9tVXxmKk)

**LAB** [Use Azure Storage Explorer to create a blob in object storage](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-storage-explorer)

# Encryption

- **Symetric**. Same key used to encrypt and decrypt
- **Asymetric**. public / private keys where either can encrypt, but both are required to decrypt.  Typically used for signing.
- **Encryption at rest**. data stored on physical medium
- **Encryption in transist**. data moving from one location to another.

## Raw Storage
[Azure Storage Service Encryption](https://docs.microsoft.com/en-us/azure/storage/common/storage-service-encryption) uses auto encription before persisting to Azure Managed Disks, Azure Blob Sorage, Azure Files, Azure Queue Storage. Decryption is performed on retreive.  Uses 256 bit [AES encryption](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard).

[Azure Disk Encryption (ADE)](https://docs.microsoft.com/en-us/azure/security/azure-security-disk-encryption-windows) used on Windows (BitLocker) and Linux (DM-Crypt).

[Azure SQL Database Encryption](https://docs.microsoft.com/en-us/azure/sql-database/transparent-data-encryption-azure-sql) at rest for Microsoft-managed server-side and client-side encryption scenarios. Support for server encryption is currently provided through the unified SQL feature called Transparent Data Encryption (TDE). Once an Azure SQL Database customer enables TDE, keys are automatically created and managed for them. Encryption at rest can be enabled at the database and server levels. TDE is enabled by default on newly created databases. Azure SQL Database also supports RSA 2048-bit customer-managed keys in Azure Key Vault.

[Azure Cosmos DB Encryption](https://docs.microsoft.com/en-us/azure/cosmos-db/database-encryption-at-rest) stores its primary databases on solid-state drives (SSDs). Its media attachments and backups are stored in Azure Blob storage, which is generally backed up by hard disk drives (HDDs). Cosmos DB automatically encrypts all databases, media attachments and backups.

[Always Encrypted]()

[Trusted Execution Environment (TEE)]()



# Data Classification
- **Restricted**. significant risk if exposed, altered, or deleted. Examples: credit card info, personal health records.
- **Private**. moderate risk if exposed, altered, or deleted. Examples: personal infor such as name / address / phone number.
- **Public**. no risk if exposed, altered, or deleted. Examples: product specifications, public notices.

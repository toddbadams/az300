
# Azure Storage

standard / premium

custom domain names

replication

storage explorer

import / export service

cdn

monitoring storage & health

Create and configure storage accounts
May include but not limited to: Configure network access to the storage account; create and configure storage account; generate shared access signature; install and use Azure Storage Explorer; manage access keys; monitor activity log by using Log Analytics; implement Azure storage replication

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

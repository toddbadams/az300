
## Current Active Directory forests
- There is no trust relationship between the forests
- All of the offices have high speed internet connections

### ops.acme.com 
- the production forest that hosts all the identities required for internal user and computer authentication
- at least one domain controller from the ops.acme.com forest.

### research.acme.com
- used by the research department
- the main office contains the domain controller of the research.acme.com forest

### acme-app
- running on Microsoft Internet Information Services on-premise
- stores its data on Microsoft SQL Server 2016
- the servers are all running on Hyper-V
- the same Hyper-V environment also hosts a staging environment to test all updates to the web application
- all Microsoft based licences have been purchased via a Microsoft Enterprise Agreement that includes Software Assurance

## Planned Changes
- Existing licences should be used wherever possible to minimize on costs

### Compute
- migrate its workloads to Azure
- The research department will continue to use the infrastructure in the on-premise environment
- migrate `acme-app` to Azure
- All new deployments to Azure must be redundant in the case of an Azure region failure
- PaaS deployments are preferred wherever possible

### Database
- migrate SQL database to Azure
- record metrics of the migrated SQL database
- db administrators should be able to analyse the metrics 
- db downtime must be minimized when the database is being migrated onto Azure
- db backup's must be maintained for a period of 5 years

### Security
- Administrators should be able to authenticate to Azure by using the ops.acme.com credentials
- Any administrative access to Azure must be complemented by multi-factor authentication

### Active Directory
- create a hybrid identity model along with a Microsoft Office 365 deployment
- Users need to always authenticate using their ops.acme.com UPN identity
- Directory Synchronization must be established between Azure AD and the ops.acme.com forest. This synchronization must not be affected by a link failure between Azure and the on-premise network.


## Relevant Reading
- [AD connect topologies](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/plan-connect-topologies)
- [AD custom domains](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/add-custom-domain)
- [AD baseline policies](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-baseline-protection)
- [SQL service tiers](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-service-tiers-vcore?tabs=azure-portal)
- [SQL import](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-import?tabs=azure-powershell)
- [Web App Scale Up](https://docs.microsoft.com/en-us/azure/app-service/manage-scale-up)
- [Traffic Manager Routing](https://docs.microsoft.com/en-us/azure/traffic-manager/traffic-manager-routing-methods#priority)
- [App Service](https://docs.microsoft.com/en-us/azure/app-service/)
- [SQL long term retention](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-long-term-retention)
- [App Service plan hosting](https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans)
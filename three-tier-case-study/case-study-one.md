## Current Finanical Processing System 

The current system is a 3 tier monolith
- Front end Web App written in C# and hosted on Internet Information Services
- Middle tier API written in C# and hosted on Internet Information Services
- Back end data store running on Microsoft SQL server 2016 currently 1 TB in size. The growth of the database is not expected to grow beyond 3 TB.
- All servers are running on Windows

The system currently has the following requirements:
- All data must be encrypted in rest and in transit
- The front and middle tier use of encryption keys to protect the data store. Only these tiers should have the capability to access the encryption keys.
- Database backups need to be maintained in 2 separate locations that are at least 100 miles apart
- Database backups need to be stored for up to 7 years
- Traffic to the servers needs to be controlled via source IP address and port no
- Access to the system should only be via the internal network
- The Security team needs to be able to inspect all inbound and outbound traffic

## Current Transactional Query System</strong>
- The Transaction Query system built on .Net. 
- The data is stored in Azure Table storage. 
- This .Net service currently runs on a client computer

## Planned Changes
- migrate the Financial Processing system to Azure

The system has the following requirements:
- Infrastructure services must remain available if a region or a data center fails
- Failover must occur without any administrative intervention
- Wherever possible, Azure managed services must be used to management overhead
- Whenever possible, costs must be minimized.
- Collect windows security logs from the Middle tier and retain the logs for several years
- Generate alerts if any unauthorized access to the backend Virtual machines are detected
- The number of instances assigned to the front and middle tiers should be adjusted automatically based on the CPU utilization
- An SLA of 99.95% must be guaranteed on the Infrastructure for the front and middle tier systems
- Identity management must be performed via Active directory and all password hashes must be stored on the on-premise environment.
- If there are any suspicious attempts for authentication, then that should trigger multi-factor authentication. Access should be allowed if the authentication attempt is successful.
- The data store for the transactional query system will be move from Azure Table storage to a CosmosDB account

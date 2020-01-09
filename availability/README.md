# High Available Best Practices

[Availability](https://docs.microsoft.com/en-us/azure/architecture/guide/pillars#availability) is often described in terms of "9s" — for example, "four 9s" means 99.99% uptime. The following table shows the potential cumulative downtime at different availability levels.

| Number 9's | % Uptime | Downtime per week | Downtime per month | Downtime per year |
|------------|----------|-------------------|--------------------|-------------------|
| 2          | 99%      | 1.68 hours        | 7.2 hours          | 3.65 days         |
| 3          | 99.9%    | 10 minutes        | 43.2 minutes       | 8.76 hours        |
| 4          | 99.99%   | 1 minute          | 4.32 minutes       | 52.56 minutes     |
| 5          | 99.999%  | 6 seconds         | 26 seconds         | 5.26 minutes      |

## Application Design

Implement:

- an external configuration for applications to isolate resources
- a stateless interface which allows multiple instances of the application
- workloads decomposed into critical and less-critical and select service features appropriately
- idempotent messaging whenever possible using a high avialablitiy [Azure Service Bus Messaging](https://docs.microsoft.com/en-us/azure/service-bus-messaging/)
- a [queue-based load levelling](https://docs.microsoft.com/en-us/azure/architecture/patterns/queue-based-load-leveling) pattern to handle rapid burst events
- multiple instances to prevent a single point of failure
- minimal dependencies between services

## Data management

Implement:

- Azure data services where possible, such as Azure SQL and Cosmos DB.
- backups to meet your Recover Point Objective (RPO) and test restores. Implement Azure Backup for VMs. Create a point-in-time snapshot of blob and store to another Azure Storage account. Azure SQL automatically performs full backups weekly and differential hourly. Cosmos DB automatically takes backups at a regular interval in a separate storage service and replicated globally.
- optimistic concurrency and eventual consistency.
- Azure Site Recover to replicate VM disks.

## Errors

Implement:

- exception handling to gracefully recover and inform
- [retry patterns](https://docs.microsoft.com/en-us/azure/architecture/best-practices/retry-service-specific) for transient failures
- [circuit breaking](https://docs.microsoft.com/en-us/azure/architecture/patterns/circuit-breaker) to avoid cascading failures
- Configure request timeouts
- Fall back to a different service or workflow for critical workloads

## Monitoring & Recovery

Implement:

- logging and maintain outside the app to isolated resource
- profiling for compute, memory and network bandwidth for varying number of users
- regular [testing of failover and fallback systems](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-test-failover-to-azure)
- testing of monitoring systems
- monitoring of long running processes using [Scheduler Agent Supervisor pattern](https://docs.microsoft.com/en-us/azure/architecture/patterns/scheduler-agent-supervisor)

## Single Region Deployment

- Deploy multiple instances to avoid a single point of failure.  Use auto scaling based on compute, memory, and network bandwidth.
- Place virtual machines (VMs) in an availability set.
- Replicate VMs across multiple regions using Azure Site Recovery. 
- Implement standby environment and auto switch over in the event of an environment failure.
- Multiple virtual machines at each tier connected via app gateway or load balancer and are part of an availability set.
- Each tier is part of an availability set.
- Virtual machines are placed in different fault and update domains.
- Web servers connected to application gateway.
- Rest of tiers have internal balancers.

## Multi-Region Deployment

In the event a region becomes unavailable a second region can be configured as a fail over region.

- Both regions have same resources deployed.
- Databases in regions are connected using VNET peering and gateways.
- Traffic Manager routes traffic based on priority load balancing.
- Traffic Manager routes request to region A with failover to region B.
- Implement Read-access geo-redundant storage (RAGRS) in Azure Storage to replicate data to a secondary region.

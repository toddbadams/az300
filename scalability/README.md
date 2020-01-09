# Scalability

[Scalability](https://docs.microsoft.com/en-us/azure/architecture/guide/pillars#scalability) is the ability of a system to handle increased load. Two main ways to scale:

|             | Horizontal                                        | Vertical                                                        |
|-------------|---------------------------------------------------|-----------------------------------------------------------------|
| meaning     | out/in adding/removing recourses                  | up/down increase/decrease resource capacity                     |
| cloud scale | can run on thousands of nodes                     | NO                                                              |
| elastic     | can auto in/out as load changes                   | some resources cannot be up/down without changing resource type |
| cost        | several small VMs can cost less than one large VM |                                                                 |
| resiliency  | can tolerate an instance going down               | NO                                                              |

- [Scalability checklist](https://docs.microsoft.com/en-us/azure/architecture/checklist/scalability)
- [Design patterns for scalability and performance](https://docs.microsoft.com/en-us/azure/architecture/patterns/category/performance-scalability)
- [Autoscaling](https://docs.microsoft.com/en-us/azure/architecture/best-practices/auto-scaling)
- [Background jobs](https://docs.microsoft.com/en-us/azure/architecture/best-practices/background-jobs)
- [Caching](https://docs.microsoft.com/en-us/azure/architecture/best-practices/caching)
- [CDN](https://docs.microsoft.com/en-us/azure/architecture/best-practices/cdn)
- [Data partitioning](https://docs.microsoft.com/en-us/azure/architecture/best-practices/data-partitioning)

## Common elastic patterns

[common cloud architecture patterns](https://docs.microsoft.com/en-us/azure/architecture/patterns/)

A primary advantage of the cloud is elastic scaling. Types of scaling requirements:

- **On and off**. Workloads occur occasionally.
- **Growing fast**. A successful service tends to grow on a curve. 
- **Unpredictable bursting**. Bursts correlate with unexpected or unplanned peaks in demand. 
- **Predictable bursting**. Bursts can be mapped to specific trends that are planned and well known. 

## Transient errors

An application can handle transient failures using:

- **Cancel**. fault indicates the failure isn't transient, cancel the operation and report an exception. 
- **Retry**. If fault reported is unusual or rare, retry the failing request again immediately.
- **Retry after a delay**. If fault caused by one of the more commonplace connectivity or busy failures, wait for a suitable amount of time before retrying the request.

## App Service Plan

Auto-scale metrics available on an App Service plan instance:

- **CPU**. The average amount of CPU time used across all instances of the plan
- **Memory**.  The average amount of memory used across all instances of the plan
- **Data in**. The average incoming bandwidth used across all instances of the plan
- **Data out**. The average outgoing bandwidth used across all instances of the plan
- **HTTP queue**. The average number of both read and write requests that were queued on storage. A high disk queue length is an indication of an application that might be slowing down due to excessive disk I/O.
- **Disk queue**. The average number of HTTP requests that had to sit in the queue before being fulfilled. A high or increasing HTTP queue length is a symptom of a plan under a heavy load.

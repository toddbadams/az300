
# Common web app patterns

[common cloud architecture patterns](https://docs.microsoft.com/en-us/azure/architecture/patterns/)

A primary advantage of the cloud is elastic scaling. Types of scaling requirements:

- **On and off**. Workloads occur occasionally.
- **Growing fast**. A successful service tends to grow on a curve. 
- **Unpredictable bursting**. Bursts correlate with unexpected or unplanned peaks in demand. 
- **Predictable bursting**. Bursts can be mapped to specific trends that are planned and well known. 


## App Service Plan
Auto-scale metrics available on an App Service plan instance:

- **CPU**. The average amount of CPU time used across all instances of the plan
- **Memory**.  The average amount of memory used across all instances of the plan
- **Data in**. The average incoming bandwidth used across all instances of the plan
- **Data out**. The average outgoing bandwidth used across all instances of the plan
- **HTTP queue**. The average number of both read and write requests that were queued on storage. A high disk queue length is an indication of an application that might be slowing down due to excessive disk I/O.
- **Disk queue**. The average number of HTTP requests that had to sit in the queue before being fulfilled. A high or increasing HTTP queue length is a symptom of a plan under a heavy load.

## Transient errors
An application can handle transient failures using:

- **Cancel**. fault indicates the failure isn't transient, cancel the operation and report an exception. 
- **Retry**. If fault reported is unusual or rare, retry the failing request again immediately.
- **Retry after a delay**. If fault caused by one of the more commonplace connectivity or busy failures, wait for a suitable amount of time before retrying the request.
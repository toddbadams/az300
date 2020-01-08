# Multifacted observability in serverless compute

PaaS, containers and FaaS let engineers build dynamic, scaled microservice architectures at pace. In this dynamic, fast-paced environment it's critical that modern instrumentation is implemented from the get-go - old practices of bolting on monitoring after the fact no longer scale.

How we built on a FaaS architectured and how we are using observability to build an understanding of complex system.

## Pillars of quality

A successful cloud application focus on these five [pillars of software quality](https://docs.microsoft.com/en-gb/azure/architecture/guide/pillars):

| Pillar       | Description                                                                |
|--------------|----------------------------------------------------------------------------|
| Scalability  | The ability of a system to handle changing load                            |
| Availability | The proportion of time that a system is functional and working             |
| Resiliency   | The ability of a system to recover from failures and continue to function  |
| Management   | Operations processes that keep a system running in production              |
| Security     | Protecting applications and data from threats                              |

## Management and DevOps

This pillar covers the operations processes that keep an application running in production.

- Cloud applications run in a remote data-centre where we do not have full control of the infrastructure
- It is **NOT** practical to log into VMs to troubleshoot an issue or sift through log files
- With PaaS services, there is no dedicated VM to log into
- Monitoring and diagnostics give insight into the system, so that you know when and where failures occur. All systems must be observable
- Use a common and consistent logging schema that lets you correlate events across systems.

The monitoring and diagnostics process has several distinct phases:

- **Instrumentation** - Generating the raw data; application logs, web server logs, diagnostics built into the platform.
- **Collection and storage** - Application Insights is used to consolidate the data into one place.
- **Analysis and diagnosis**  - Troubleshoot issues and see the overall health.
- **Visualization and alerts** -  Using telemetry data to spot trends or alert the operations team.

## Tracing

Software traceability is a fundamentally important task in software engineering. The need for automated traceability increases as projects become more complex and as the number of artifacts increases( see [Software traceability with topic modeling](https://www.semanticscholar.org/paper/Software-traceability-with-topic-modeling-Asuncion-Asuncion/183bc2081327c2bd005485c3d44e561bcf499c17) ).

| Facet                 | Description                                                                                          |
|-----------------------|------------------------------------------------------------------------------------------------------|
| Operation Name and Id | The name of a cloud hosted operation and it's instance identifier                                    |
| Correlation Id        | A unique identifier that is attached to user request providing reference to a particular event chain |
| Event Name Id         | A specific process step within the application                                                       |
| Timestamp             | The specific time of the event                                                                       |
| Entity Name and Id    | The entity name and identifier being operated on within the event                                    |



# [Containers v Serverless](https://www.thorntech.com/2018/08/containers-vs-serverless/)

Containers are best used for complex, long-running applications where you need a high level of control over your environment and you have the resources to set up and maintain the application.

Containers are also very useful in migrating monolithic legacy applications to the cloud. You can split up these apps into containerized microservices and orchestrate them using a tool like Kubernetes or Docker Swarm.

Containers are ideal for an app like a large e-commerce website. A site like this contains (pun intended) many parts, such as product listings, payment processing, inventory management, and many more. You can use containers to package each of these services without having to worry about time limits or memory issues.

Serverless is best applied for apps that need to be ready to perform tasks but don’t always need to be running. For instance, serverless is a great choice for an Internet of Things (IoT) application that detects the presence of water to identify a leak in a water storage facility. The app doesn’t have to run all the time, but it needs to be ready to act in the case of a leak.

Serverless is ideal when development speed and cost minimization is paramount and if you don’t want to manage scaling concerns.



# Service Fabric

addresses the significant challenges in developing and managing cloud native applications. 

provides a sophisticated, lightweight runtime to build distributed, scalable, stateless, and stateful microservices running in containers.

It hosts microservices inside containers that are deployed and activated across the Service Fabric cluster. A move from virtual machines to containers

strong focus on building stateful services

To get started with Reliable Services, you only need to understand a few basic concepts:

Service type: This is your service implementation. It is defined by the class you write that extends StatelessService and any other code or dependencies used therein, along with a name and a version number.
Named service instance: To run your service, you create named instances of your service type, much like you create object instances of a class type. A service instance has a name in the form of a URI using the “fabric:/” scheme, such as "fabric:/MyApp/MyService".
Service host: The named service instances you create need to run inside a host process. The service host is just a process where instances of your service can run.
Service registration: Registration brings everything together. The service type must be registered with the Service Fabric runtime in a service host to allow Service Fabric to create instances of it to run.

supported for development:

Windows 7
Windows 8/Windows 8.1
Windows Server 2012 R2
Windows Server 2016
Windows 10



[Virtual Actors](https://www.microsoft.com/en-us/research/project/orleans-virtual-actors/?from=http%3A%2F%2Fresearch.microsoft.com%2Fen-us%2Fprojects%2Forleans%2F)

What are Actors?
An actor is an isolated, independent unit of compute and state with single-threaded execution. The actor pattern is a computational model for concurrent or distributed systems in which a large number of these actors can execute simultaneously and independently of each other. Actors can communicate with each other and they can create more actors.

When to use Reliable Actors
Service Fabric Reliable Actors is an implementation of the actor design pattern. As with any software design pattern, the decision whether to use a specific pattern is made based on whether or not a software design problem fits the pattern.

Although the actor design pattern can be a good fit to a number of distributed systems problems and scenarios, careful consideration of the constraints of the pattern and the framework implementing it must be made. As general guidance, consider the actor pattern to model your problem or scenario if:

- Your problem space involves a large number (thousands or more) of small, independent, and isolated units of state and logic.
- You want to work with single-threaded objects that do not require significant interaction from external components, including querying state across a set of actors.
- Your actor instances won't block callers with unpredictable delays by issuing I/O operations.



The [actor model](https://en.wikipedia.org/wiki/Actor_model) is a mathematical model of concurrent computation that treats "actors" as the universal primitives of concurrent computation.  In response to a message that it receives, an actor can: make local decisions, create more actors, send more messages, and determine how to respond to the next message received. Actors may modify their own private state, but can only affect each other through messages (avoiding the need for any locks)



todo  list ways service fabric different from docker


# Azure Kubernetes Service

 As a hosted Kubernetes service, Azure handles critical tasks like health monitoring and maintenance for you.

- Flexible deployment options. Azure Kubernetes Service offers portal, command line, and template driven deployment options (Resource Manager templates and Terraform). When deploying an AKS cluster, the Kubernetes master and all nodes are deployed and configured for you. Additional features such as advanced networking, Azure Active Directory integration, and monitoring can also be configured during the deployment process.

- Identity and security management. AKS clusters support Role-Based Access Control (RBAC). An AKS cluster can also be configured to integrate with Azure Active Directory. In this configuration, Kubernetes access can be configured based on Azure Active Directory identity and group membership.

- Integrated logging and monitoring. Container health gives you performance visibility by collecting memory and processor metrics from containers, nodes, and controllers. Container logs are also collected. This data is stored in your Log Analytics workspace, and is available through the Azure portal, Azure CLI, or a REST endpoint.

- Cluster node scaling. As demand for resources increases, the nodes of an AKS cluster can be scaled out to match. If resource demand drops, nodes can be removed by scaling in the cluster. AKS scale operations can be completed using the Azure portal or the Azure CLI.

- Cluster node upgrades. Azure Kubernetes Service offers multiple Kubernetes versions. As new versions become available in AKS, your cluster can be upgraded using the Azure portal or Azure CLI. During the upgrade process, nodes are carefully cordoned and drained to minimize disruption to running applications.

- HTTP application routing. The HTTP Application Routing solution makes it easy to access applications deployed to your AKS cluster. When enabled, the HTTP application routing solution configures an ingress controller in your AKS cluster. As applications are deployed, publically accessible DNS names are auto configured.

- GPU enabled nodes. AKS supports the creation of GPU enabled node pools. Azure currently provides single or multiple GPU enabled VMs. GPU enabled VMs are designed for compute-intensive, graphics-intensive, and visualization workloads.

- Development tooling integration. Kubernetes has a rich ecosystem of development and management tools such as Helm, Draft, and the Kubernetes extension for Visual Studio Code. These tools work seamlessly with Azure Kuberntees Service.

Additionally, Azure Dev Spaces provides a rapid, iterative Kubernetes development experience for teams. With minimal configuration, you can run and debug containers directly in Azure Kubernetes Service (AKS).

- Virtual network integration. An AKS cluster can be deployed into an existing VNet. In this configuration, every pod in the cluster is assigned an IP address in the VNet, and can directly communicate with other pods in the cluster, and other nodes in the VNet. Pods can connect also to other services in a peered VNet, and to on-premises networks over ExpressRoute and site-to-site (S2S) VPN connections.

- Private container registry. Integrate with Azure Container Registry (ACR) for private storage of your Docker images.

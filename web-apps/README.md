
# App Service Web Apps

- Multiple languages and frameworks - ASP.NET, ASP.NET Core, Java, Ruby, Node.js, PHP, or Python. 
- DevOps optimization - continuous integration with Visual Studio Team Services, GitHub, BitBucket, Docker Hub, or Azure Container Registry. 
- Global scale with high availability - Scale up or out manually or automatically. 
- Connections to SaaS platforms and on-premises data - more than 50 connectors for enterprise systems.
- Security and compliance - App Service is ISO, SOC, and PCI compliant. 
- Application templates - extensive list of application templates, such as WordPress, Joomla, and Drupal.
- API and mobile features - CORS support for RESTful API scenarios.
- Serverless code - Run a code snippet or script on-demand without explicitly provision.

## Azure App Service Environment
An Azure App Service feature that provides a fully isolated and dedicated environment

- Windows web apps
- Linux web apps (in Preview)
- Docker containers (in Preview)
- Mobile apps
- Functions

create multiple ASEs within a single Azure region or across multiple Azure regions

ASEs are isolated to running only a single customer's applications and are always deployed into a virtual network. Customers have fine-grained control over inbound and outbound application network traffic

ASE comes with its own pricing tier, learn how the Isolated offering helps drive hyper-scale and security.
App Service Environments v2 provide a surrounding to safeguard your apps in a subnet of your network and provides your own private deployment of Azure App Service.

Multiple ASEs can be used to scale horizontally.

ASEs can be used to configure security architecture, as shown in the AzureCon Deep Dive. To see how the security architecture shown in the AzureCon Deep Dive was configured, see the article on how to implement a [layered security architecture with App Service environments](https://docs.microsoft.com/en-us/azure/app-service/environment/app-service-app-service-environment-layered-security).

Apps running on ASEs can have their access gated by upstream devices, such as web application firewalls (WAFs).

An ASE is dedicated exclusively to a single subscription and can host 100 App Service Plan instances.

[CLI samples for Azure App Service](https://docs.microsoft.com/en-us/azure/app-service/samples-cli)

[PowerShell samples for Azure App Service](https://docs.microsoft.com/en-us/azure/app-service/samples-powershell)

# WebJobs

WebJobs is a feature of Azure App Service that enables you to run a program or script in the same context as a web app, API app, or mobile app. 

| Continuous | Triggered| 
|-------|------------| 
| Starts immediately when the WebJob is created. To keep the job from ending, the program or script typically does its work inside an endless loop. If the job does end, you can restart it.| Starts only when triggered manually or on a schedule.| 
| Runs on all instances that the web app runs on. You can optionally restrict the WebJob to a single instance.|  Runs on a single instance that Azure selects for load balancing. | 
| Supports remote debugging. | Doesn't support remote debugging.| 


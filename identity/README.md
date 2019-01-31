

# Authentication and Authorization

Authentication is the act of verifying identity. 
Authorization is the act of verifying that identity has access to an operation. 


## Certificate Authentication

[Client certificate](https://en.wikipedia.org/wiki/Client_certificate) authentication enables each web-based client to establish its identity to a server by using a digital certificate. 

In Azure, certificate-based authentication enables authentication via (Azure AD) with a client certificate on a Windows or mobile device when connecting to:

- Custom services 
- Microsoft SharePoint Online
- Microsoft Office 365
- Skype for Business
- Azure API Management
- Third-party services deployed in your organization


## Multi-factor Authentication
[Multi-factor authentication (MFA)](https://en.wikipedia.org/wiki/Multi-factor_authentication) is an authentication method in which an users' identity is verified after successfully presenting two or more factors: 

- Knowledge – Something that only the user knows (security questions, password, or PIN).
- Possession – Something that only the user has (corporate badge, mobile device, or security token).
- Inherence – Something that only the user is (fingerprint, face, voice, or iris).

Two-factor authentication (2FA) is a  subset of MFA using a combination of two different factors.

Azure MFA is a two-step verification solution that is built in to Azure AD. Administrators configure authentication methods. There are two ways to enable MFA:

- Enable each user for MFA. 
- Conditional access policy. Uses the Azure AD Identity Protection risk policy.

Once Azure MFA is enabled, administrators choose authentication methods:

- Call to phone
- Text message to phone
- Push Notification to mobile app
- Verification code via Microsoft Authenticator app
- Custom MFA via .Net SDK

## Claims
While creating an identity the trusted party assigns one or more claims (name/value pair) that represents authorized operations.

## Role-based Authorization
Role-based authorization operation authorization from application based on user roles. A role assignment is the process of binding a role definition to a user, group, or service principal at a particular scope for the purpose of granting access. A role assignment consists of three elements: 

- A **security principal**. An object that represents a user, group, or service principal that is requesting access to Azure resources.

-- A user is an individual who has a profile in AAD. You can also assign roles to users in other tenants.
-- A group is a set of users created in AAD.
-- A service principal is an identity for an application.

- A **role definition** is a collection of permissions. It's sometimes just called a role. A role definition lists the operations that can be performed, such as read, write, and delete. Roles can be high level, like owner, or specific, like virtual machine reader.

- The **Scope** is the boundary that the access applies to

## Forms-based Authentication
Forms authentication uses an HTML form to send the user's credentials to the server. In the context of Azure, many applications using forms-based authentication are legacy applications that were shifted to Azure without being refactored or rewritten.  Forms authentication does have a few disadvantages, including:

- requires the browser to use an HTML form.
- requires measures to prevent [cross-site request forgery (CSRF)](https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)).
- User credentials are sent in plaintext as part of an HTTP request.

## Windows-based Authentication
Integrated Windows authentication uses Kerberos or NTLM, the client sends credentials in the Authorization header. Best suited for an intranet environment. Disadvantages:

- It’s difficult to use in internet applications without exposing the entire user directory.
- It can’t be used in Bring Your Own Device (BYOD) scenarios.
- It Requires Kerberos or Integrated Windows Authentication (NTLM) support in the client browser or device.
- The client must be joined to the Active Directory Domain.

**[Kerberos](https://en.wikipedia.org/wiki/Kerberos_(protocol))** is a computer network authentication protocol that works on the basis of tickets to allow nodes communicating over a non-secure network to prove their identity to one another in a secure manner. 

Windows Challenge/Response **[NTLM](https://docs.microsoft.com/en-us/windows/desktop/secauthn/microsoft-ntlm)** is the authentication protocol used on networks that include systems running the Windows operating system and on stand-alone systems.

## ASP.NET Identity
[ASP.NET Identity](https://docs.microsoft.com/en-us/aspnet/identity/overview/getting-started/introduction-to-aspnet-identity) is a unified identity platform for ASP.NET applications

can be used:
- with all of the ASP.NET frameworks, such as ASP.NET MVC, Web Forms, Web Pages, Web API, and SignalR.
- when you are building web, phone, store, or hybrid applications.

Persistence control
- uses Entity Framework Code First.
- simple to change table names or the data type of primary keys, etc.
- easy to plug in different storage mechanisms.

Supports
- restricted access via roles. 
- claims-based authentication
- social login providers


# Active Directory (AAD)

[AAD](https://docs.microsoft.com/en-us/azure/active-directory/) is multi-tenant cloud-based directory and identity management service. Azure AD helps sign in (authenticate) and access (authorize):

- **External resources**. Office 365, Azure portal, and many **[Software as a service (Saas)](https://en.wikipedia.org/wiki/Software_as_a_service)** applications.
- **Internal resources**. Custom apps on corporate network and intranet.

[![Azure Active Directory Overview](http://img.youtube.com/vi/wYtJNjgIXa8/0.jpg)](http://www.youtube.com/watch?v=wYtJNjgIXa8)

## Plans

- **Free**. Provides user and group management, on-premises directory synchronization, basic reports, and **[Single sign-on (SSO)](https://en.wikipedia.org/wiki/Single_sign-on)** across Azure, Office 365, and many SaaS apps.

- **Basic**. Also provides cloud-centric app access, group-based access management, self-service password reset for cloud apps, and Azure AD Application Proxy.

- **P1**. Also provides hybrid users access,  dynamic groups, self-service group management, Microsoft Identity Manager and cloud write-back capabilities.

- **P2**. Also provides Identity Protection, Privileged Identity Management.


[![Azure Active Directory Overview](http://img.youtube.com/vi/ASijhrPDmGI/0.jpg)](http://www.youtube.com/watch?v=ASijhrPDmGI)


## Active Directory DS
The traditional deployment of Windows Server-based Active Directory on a physical or virtual server. Provides managed domain services such as domain join, group policy, LDAP, Kerberos/NTLM authentication that are fully compatible with Windows Server Active Directory. AAD Domain Services provides a managed AD domain in an Azure virtual network.

The **[Lightweight Directory Access Protocol (LDAP)](https://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol)** is an open industry standard application protocol for accessing and maintaining distributed directory information services over an Internet Protocol (IP) network.

[Choose between Azure Active Directory join and Azure Active Directory Domain Services](https://docs.microsoft.com/en-us/azure/active-directory-domain-services/active-directory-ds-compare-with-azure-ad-join)
You can also join organization owned devices to Azure AD. This mechanism offers the same benefits of registering a personal device with Azure AD. Additionally, users can sign in to the device using their corporate credentials. Azure AD joined devices give you the following benefits:

- SSO
- Enterprise policy-compliant roaming of user settings across devices.
- Access to the Windows Store for Business using your corporate credentials.
- Windows Hello for Business
- Restricted access to apps and resources from devices compliant with corporate policy.

## RBAC
**[Role-based access control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview)** provides a granular level of access based on an administrator’s assigned tasks.

![RBAC pattern](https://docs.microsoft.com/en-us/azure/role-based-access-control/media/overview/rbac-least-privilege.png)

**[Built-in roles](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#roles-in-azure)** are definitions that can be assigned to users, groups, and service principals. Additionally [custom roles](https://docs.microsoft.com/en-us/azure/role-based-access-control/custom-roles) can be created.

- **Owner**. full access including the right to delegate access to others.
- **Contributor**. full access but can’t grant access to others.
- **Reader**. view existing Azure resources.

Custom role example JSON.

``` json
{
  "Name": "Virtual Machine Operator",
  "Id": "88888888-8888-8888-8888-888888888888",
  "IsCustom": true,
  "Description": "Can monitor and restart virtual machines.",
  "Actions": [
    "Microsoft.Storage/*/read",
    "Microsoft.Network/*/read",
    "Microsoft.Compute/*/read",
    "Microsoft.Compute/virtualMachines/start/action",
    "Microsoft.Compute/virtualMachines/restart/action",
    "Microsoft.Authorization/*/read",
    "Microsoft.Resources/subscriptions/resourceGroups/read",
    "Microsoft.Insights/alertRules/*",
    "Microsoft.Insights/diagnosticSettings/*",
    "Microsoft.Support/*"
  ],
  "NotActions": [],
  "DataActions": [],
  "NotDataActions": [],
  "AssignableScopes": [
    "/subscriptions/{subscriptionId1}",
    "/subscriptions/{subscriptionId2}",
    "/subscriptions/{subscriptionId3}"
  ]
}
```
The **Actions** and **NotActions** properties can be tailored to grant and deny the exact permissions. The **AssignableScopes** property of the role specifies the scopes (subscriptions, resource groups, or resources) within which the custom role is available for assignment.

### RBAC Tutorials

- **[Grant access for a user using RBAC and the Azure portal](https://docs.microsoft.com/en-us/azure/role-based-access-control/quickstart-assign-role-user-portal)**

- **[Create a custom role using Azure PowerShell](https://docs.microsoft.com/en-us/azure/role-based-access-control/tutorial-custom-role-powershell)**



## Self-service Password reset 


[![Configuring Self-Service Password Reset](http://img.youtube.com/vi/NMmhB-d3t3E/0.jpg)](http://www.youtube.com/watch?v=NMmhB-d3t3E)

[Quickstart: Self-service password reset](https://docs.microsoft.com/en-us/azure/active-directory/authentication/quickstart-sspr)

## Tenant v Directory



## Add custom domains
## Enterprise State Roaming; 
## implement conditional access policies; 
## manage multiple directories; 
## perform an access review
## Implement and manage hybrid identities
## configure federation and single sign-on; 


## Azure AD Connect
Azure AD Connect integrates on-premises directories with Azure AD and is made up of three primary components: 

- **Synchronization**. ensures identity information for your on-premises users and groups is matching the cloud.

- **Active Directory Federation Service**. (optional) configures a hybrid environment using an on-premises AD FS infrastructure. Used for as domain-join SSO, enforcement of Azure AD sign-in policy, and smart card or third-party multi-factor authentication.

- **Health monitoring**. Monitoring to the Azure portal.

Features:

- **Filtering**. limits which objects are synchronized to Azure AD.

- **Password hash synchronization**. synchronizes the password hash in Active Directory to Azure AD. 

- **Password writeback**. allows users to change and reset their passwords in the cloud and have on-premises password policy applied. [How-to: Configure password writeback](https://docs.microsoft.com/en-us/azure/active-directory/authentication/howto-sspr-writeback)

- **Device writeback**. will allow a device registered in Azure AD to be written back to on-premises Active Directory so it can be used for conditional access.

- **The prevent accidental deletes**. feature is turned on by default and helps protect your cloud directory from numerous delete operations at the same time. By default, it allows 500 delete operations per run. 

- **Automatic upgrade**.  is enabled by default for express settings installations and helps ensure that your Azure AD Connect is always up-to-date with the latest release.


## manage password sync and writeback


Implement secure data solutions
May include but not limited to: Encrypt and decrypt data at rest and in transit; encrypt data with Always Encrypted; implement Azure Confidential Compute and SSL/TLS communications; create, read, update, and delete keys, secrets, and certificates by using the KeyVault API

[Secure your cloud data](https://docs.microsoft.com/en-us/learn/paths/secure-your-cloud-data/)



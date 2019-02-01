# [Active Directory (AAD)](https://docs.microsoft.com/en-us/azure/active-directory/)

A multi-tenant cloud-based directory and identity management service. Azure AD helps sign in and access:

- External resources, such as Microsoft Office 365, the Azure portal, and thousands of other SaaS applications.
- Internal resources, such as apps on your corporate network and intranet, along with any cloud apps developed by your own organization.

## Pricing

- Free. Provides user and group management, on-premises directory synchronization, basic reports, and SSO across Azure, Office 365, and many SaaS apps.

- Basic. Also provides cloud-centric app access, group-based access management, self-service password reset for cloud apps, and Azure AD Application Proxy.

- P1. Also provides hybrid users access,  dynamic groups, self-service group management, Microsoft Identity Manager and cloud write-back capabilities.

- P2. Also provides Identity Protection, Privileged Identity Management.

**[Single sign-on (SSO)](https://en.wikipedia.org/wiki/Single_sign-on)** is a property of access control of multiple related, yet independent, software systems. With this property, a user logs in with a single ID and password to gain access to a connected system

**[Software as a service (Saas)](https://en.wikipedia.org/wiki/Software_as_a_service)** is a software licensing and delivery model in which software is licensed on a subscription basis and is centrally hosted.

## Active Directory DS
The traditional deployment of Windows Server-based Active Directory on a physical or virtual server. Provides managed domain services such as domain join, group policy, LDAP, Kerberos/NTLM authentication that are fully compatible with Windows Server Active Directory. AAD Domain Services provides a managed AD domain in an Azure virtual network.

The **[Lightweight Directory Access Protocol (LDAP)](https://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol)** is an open industry standard application protocol for accessing and maintaining distributed directory information services over an Internet Protocol (IP) network.

**[Kerberos](https://en.wikipedia.org/wiki/Kerberos_(protocol))** is a computer network authentication protocol that works on the basis of tickets to allow nodes communicating over a non-secure network to prove their identity to one another in a secure manner. 

Windows Challenge/Response **[NTLM](https://docs.microsoft.com/en-us/windows/desktop/secauthn/microsoft-ntlm)** is the authentication protocol used on networks that include systems running the Windows operating system and on stand-alone systems.

## RBAC
**[Role-based access control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview)** provides a granular level of access based on an administrator’s assigned tasks.

### Suggested RBAC pattern
![RBAC pattern](https://docs.microsoft.com/en-us/azure/role-based-access-control/media/overview/rbac-least-privilege.png)

**[Built-in roles](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#roles-in-azure)** are definitions that can be assigned to users, groups, and service principals. Additionally [custom roles](https://docs.microsoft.com/en-us/azure/role-based-access-control/custom-roles) can be created.

- **Owner** has full access to all resources including the right to delegate access to others.
- **Contributor** can create and manage all types of Azure resources but can’t grant access to others.
- **Reader** can view existing Azure resources.

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

## Tenant v Directory



## Add custom domains
## configure Azure AD Identity Protection
## Azure AD Join
## Enterprise State Roaming; 
## implement conditional access policies; 
## manage multiple directories; 
## perform an access review
## Implement and manage hybrid identities
## Install and configure Azure AD Connect; 
## configure federation and single sign-on; 
## manage Azure AD Connect; 
## manage password sync and writeback


Implement authentication
May include but not limited to: Implement authentication by using certificates, forms-based authentication, tokens, or Windows-integrated authentication; implement multi-factor authentication by using Azure AD; implement OAuth2 authentication; implement Managed Service Identity (MSI) Service Principal authentication

Implement secure data solutions
May include but not limited to: Encrypt and decrypt data at rest and in transit; encrypt data with Always Encrypted; implement Azure Confidential Compute and SSL/TLS communications; create, read, update, and delete keys, secrets, and certificates by using the KeyVault API

[Secure your cloud data](https://docs.microsoft.com/en-us/learn/paths/secure-your-cloud-data/)

# Authentication and Authorization

Authentication is the act of verifying someone’s identity. When you authenticate someone, you are determining who they are. Authorization is the act of verifying that someone has access to a certain subsystem or operation. 


## Certificates

Client certificate authentication enables each web-based client to establish its identity to a server by using a digital certificate, which provides additional security for user authentication. In the context of Microsoft Azure, certificate-based authentication enables you to be authenticated by Azure Active Directory (Azure AD) with a client certificate on a Windows or mobile device when connecting to different services, including (but not limited to):

- Custom services 
- Microsoft SharePoint Online
- Microsoft Office 365
- Skype for Business
- Azure API Management
- Third-party services deployed in your organization


## Multi-factor authentication
[Multi-factor authentication (MFA)](https://en.wikipedia.org/wiki/Multi-factor_authentication) is an authentication method in which a computer user is granted access only after successfully presenting two or more pieces of evidence (or factors) to an authentication mechanism: 

- Knowledge – Something that only the user knows (security questions, password, or PIN).
- Possession – Something that only the user has (corporate badge, mobile device, or security token).
- Inherence – Something that only the user is (fingerprint, face, voice, or iris).

Two-factor authentication (2FA) is a  subset of multi-factor authentication. It is a method of confirming users' claimed identities by using a combination of two different factors: 
1. something they know
1. something they have
1. something they are

## Multi-factor authentication with Azure AD

Azure Multi-Factor Authentication (MFA) is a two-step verification solution that is built in to Azure AD. Administrators can configure approved authentication methods to ensure that at least two factors are used while still keeping the sign-in process as streamlined as possible.

There are two ways to enable MFA:

- Enable each user for MFA. 
- Conditional access policy. This method uses the Azure AD Identity Protection risk policy to require two-step verification based only on the sign-in risk for all cloud applications.

Once MFA is enabled, administrators can choose authentication methods:

- Call to phone
- Text message to phone
- Sends a text message that contains a verification code
- Notification through mobile app
- Verification code from mobile app

## Claims
Authorization is the process of determining which entities have permission to change, view, or otherwise access a computer resource.  When an identity is created, it may be assigned one or more claims issued by a trusted party. A claim is a name/value pair that represents what the subject is and not what the subject can do.

## Role-based authorization
Role-based authorization is an authorization approach in which user permissions are managed and enforced by an application based on user roles. If a user has a role that is required to perform an action, access is granted; otherwise, access is denied. When an identity is created, it may belong to one or more roles. 

A role assignment consists of three elements: a security principal, a role definition, and the scope.

A security principal is an object that represents a user, group, or service principal that is requesting access to Azure resources.
- A user is an individual who has a profile in Azure Active Directory. You can also assign roles to users in other tenants.
- A group is a set of users created in Azure Active Directory. When you assign a role to a group, all users within that group have that role.
- A service principal is a security identity used by applications or services to access specific Azure resources. You can think of it as a user identity (username and password or certificate) for an application.
- A role definition is a collection of permissions. It's sometimes just called a role. A role definition lists the operations that can be performed, such as read, write, and delete. Roles can be high level, like owner, or specific, like virtual machine reader.
- The Scope is the boundary that the access applies to. When you assign a role, you can further limit the actions allowed by defining a scope. This is helpful if you want to make someone a Website Contributor but only for one resource group. In Azure, you can specify a scope at multiple levels: management group, subscription, resource group, or resource. Scopes are structured in a parent-child relationship.
A role assignment is the process of binding a role definition to a user, group, or service principal at a particular scope for the purpose of granting access. 



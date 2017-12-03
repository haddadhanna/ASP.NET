<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AuthenticationAuthorization.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Authentication</h1>
            <p>Authentication is the process of verifying the identity of the user using crendentials such as username and password.</p>
            <p>ASP.NET, in conjunction with Microsoft Internet Information Services (IIS), can authenticate user credentials such as names and passwords using any of the following authentication methods:</p>
            <ul>
                <li>Basic Authentication
                    <p>Basic authentication requires that users provide a valid user name and password to access content. This authentication method does not require a specific browser, and all major browsers support it. Basic authentication also works across firewalls and proxy servers. For these reasons, it is a good choice when you want to restrict access to some, but not all, content on a server.</p>
                    <p>However, the disadvantage of Basic authentication is that it transmits unencrypted base64-encoded passwords across the network. You should use Basic authentication only when you know that the connection between the client and the server is secure. The connection should be established either over a dedicated line or by using Secure Sockets Layer (SSL) encryption and Transport Layer Security (TLS). For example, to use Basic authentication with Web Distributed Authoring and Versioning (WebDAV), you should configure SSL encryption.</p>
                </li>
                <li>Digest Authentication
                    <p>Digest authentication uses a Windows domain controller to authenticate users who request access to content on your Web server. Digest authentication was known as Advanced Digest authentication in IIS 6.0. When you need improved security over Basic authentication, consider using Digest authentication, especially if your environment contains firewalls and proxy servers.</p>
                    <p>Any browser that does not support the HTTP 1.1 protocol cannot support Digest authentication. If you think some users will access your content with non-HTTP 1.1-compliant browsers, you should consider using a different authentication method instead.</p>
                </li>
                <li>Windows Authentication
                    <p>Integrated Windows authentication provides a means of authorizing users of the administration site, but does not allow credentials to be transmitted over the network. When you enable integrated Windows authentication, the browser running the administrative interface initiates a cryptographic exchange with the Web server using either NTLM or Kerberos authentication to validate the user. This method provides a great deal of security, but does not allow IIS to delegate user names and passwords to remote servers. Therefore, you can administer the local Windows Media server only when integrated Windows authentication is enabled.</p>
                </li>
                <li>Form Authentication
                    <p>Forms authentication lets you authenticate users by using your own code and then maintain an authentication token in a cookie or in the page URL. Forms authentication participates in the ASP.NET page life cycle through the FormsAuthenticationModule class. You can access forms authentication information and capabilities through the FormsAuthentication class.</p>
                    <p>To use forms authentication, you create a login page that collects credentials from the user and that includes code to authenticate the credentials. </p>
                </li>
                <li>ASP.NET Impersonation
                    <p>When using impersonation, ASP.NET applications can execute with the Windows identity (user account) of the user making the request. Impersonation is commonly used in applications that rely on Microsoft Internet Information Services (IIS) to authenticate the user.</p>
                    <p>ASP.NET impersonation is disabled by default. If impersonation is enabled for an ASP.NET application, that application runs in the context of the identity whose access token IIS passes to ASP.NET. That token can be either an authenticated user token, such as a token for a logged-in Windows user, or the token that IIS provides for anonymous users (typically, the IUSR_MACHINENAME identity).</p>
                </li>
            </ul>
            <h1>Authorization</h1>
            <p>Authorization specify whether an identity should grant access to a specific resource.</p>
            <p>In ASP.NET, there are two ways to authorize access to a given resource:</p>
            <ul>
                <li>File authorization</li>
                <li>URL authorization</li>
            </ul>
        </div>
    </form>
</body>
</html>

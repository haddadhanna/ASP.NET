<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Profiles.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET Profiles</h1>
            <asp:Label runat="server" ID="lblInformation" /> <br />
            <p>ASP.NET profile properties allow your application to track and permanently store user-specific information. For example, users can specify a postal code or a favorite color scheme, and your application can store that information and retrieve it from anywhere in the application. ASP.NET automatically matches the current user — whether the user is anonymous or logged on — with the personal information that is stored for their user account.</p>
            <p>To use profiles, you first enable profiles by modifying the configuration file for your ASP.NET Web application. As part of the configuration, you specify a profile provider, which is the underlying class that performs the low-level tasks of storing and retrieving profile data. You can use the profile provider included with the .NET Framework, which stores profile data in SQL Server, or you can create and use your own profile provider as described in the topic Implementing a Profile Provider. You can specify an instance of the SqlProfileProvider that connects to a database of your choosing, or you can use the default instance of the SqlProfileProvider that stores profile data on the local Web server.</p>
            <p>Reference: <a href="https://msdn.microsoft.com/en-us/library/2y3fs9xs.aspx">https://msdn.microsoft.com/en-us/library/2y3fs9xs.aspx</a></p>
        </div>
    </form>
</body>
</html>

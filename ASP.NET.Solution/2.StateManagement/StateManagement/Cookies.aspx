<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="StateManagement.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cookies</h1>
            <a href="Index.aspx">
                <h4>Home</h4>
            </a>
            <p>A cookie is a small amount of data that is stored either in a text file on the client file system or in-memory in the client browser session. It contains site-specific information that the server sends to the client along with page output. Cookies can be temporary (with specific expiration times and dates) or persistent.</p>
            <p>ASP.NET includes two intrinsic cookie collections. The collection accessed through the <b>Cookies</b> collection of <b>HttpRequest</b> contains cookies transmitted by the client to the server in the Cookie header. The collection accessed through the <b>Cookies</b> collection of <b>HttpResponse</b> contains new cookies created on the server and transmitted to the client in the <b>Set-Cookie</b> header.</p>
            <p>Reference: https://msdn.microsoft.com/en-us/library/system.web.httpresponse.cookies.aspx </p>
        </div>
    </form>
</body>
</html>

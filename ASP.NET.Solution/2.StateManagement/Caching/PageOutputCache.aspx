<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageOutputCache.aspx.cs" Inherits="Caching.PageOutputCache" %>

<%@ OutputCache Duration="50" VaryByParam="none" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Caching of an ASP.NET Page</h1>
            <h4><a href="Index.aspx">Home</a></h4>
            <p>To apply the caching for the page (or portions of the page using user controls) add the following directive: (duration in seconds)</p>
            <pre>&lt;%@ OutputCache Duration="120" VaryByParam="None" %&gt;</pre>
            <p>This value is the current datetime: <span style="color: green">
                <asp:Label runat="server" ID="lblTime"></asp:Label></span></p>
        </div>
    </form>
</body>
</html>

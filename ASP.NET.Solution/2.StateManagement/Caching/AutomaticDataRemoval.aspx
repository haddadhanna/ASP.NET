<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutomaticDataRemoval.aspx.cs" Inherits="Caching.AutomaticDataRemoval" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Automatic Data Removal</h1>
            <h4><a href="Index.aspx">Home</a></h4>
            <p>
                ASP.NET can remove data from the cache for one of these reasons:
            </p>
            <ul>
                <li>Because memory on the server is low, a process known as scavenging.</li>
                <li>Because the item in the cache has expired.</li>
                <li>Because the item's dependency changes.</li>
            </ul>
        </div>
    </form>
</body>
</html>

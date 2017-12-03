<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationCache.aspx.cs" Inherits="Caching.ApplicationCache" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Caching Application Data</h1>
            <h4><a href="Index.aspx">Home</a></h4>
            <p>ASP.NET has a powerful, easy-to-use caching mechanism that allows you to store objects in memory that require extensive server resources to create. Caching these types of resources can significantly improve the performance of your application.</p>
            <p>Reference: <a href="https://msdn.microsoft.com/en-us/library/6hbbsfk6.aspx">https://msdn.microsoft.com/en-us/library/6hbbsfk6.aspx</a></p>
            <p>
                This value is cached (the date when the application first runs):
                <span style="color: green">
                    <asp:Label runat="server" ID="lblCache" /></span>
            </p>
            <p>
                Current date time:
                <span style="color: green">
                    <asp:Label runat="server" ID="lblCurrent"></asp:Label></span>
            </p>
            <p>
                Data in the ASP.NET cache is volatile — that is, it is not permanently stored. It might be automatically removed from the cache for one of these reasons:
            </p>
            <ul>
                <li>Because the cache is full.</li>
                <li>Because the item has expired.</li>
                <li>Because an item it is dependent on changes.</li>
            </ul>
            <p>In addition to allowing items to be removed from the cache automatically, you can explicitly remove them.
                <asp:Button runat="server" ID="btnRemove" Text="Clear Cache" OnClick="btnRemove_Click" /></p>
        </div>
    </form>
</body>
</html>

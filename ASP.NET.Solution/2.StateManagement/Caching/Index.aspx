<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Caching.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET Caching Overview</h1>
            <ul>
                <li><a href="ApplicationCache.aspx">Application Cache</a></li>
                <li><a href="PageOutputCache.aspx">Page Output Cache</a></li>
                <li><a href="ExtensibleOutputCache.aspx">Extensible Output Caching</a></li>
                <li><a href="AutomaticDataRemoval.aspx">Automatic Data Removal</a></li>
                <li><a href="ItemRemovalNotification.aspx">Application Cache Item Removal Notification</a></li>
            </ul>
            <p>Reference: <a href="https://msdn.microsoft.com/en-us/library/ms178597.aspx">https://msdn.microsoft.com/en-us/library/ms178597.aspx</a></p>
        </div>
    </form>
</body>
</html>

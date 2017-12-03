<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemRemovalNotification.aspx.cs" Inherits="Caching.ItemRemovalNotification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Application Cache Item Removal Notification
            </h1>
            <h4><a href="ItemRemovalNotification.aspx">Home</a></h4>
            <p>In most cache scenarios, when an item is removed from the cache, you do not have to be notified when it has been removed. The typical development pattern is to always check the cache for the item before using it. If the item is in the cache, you use it. If it is not in the cache, you retrieve the item again and add it back to the cache.</p>
            <p>However, in some cases it is useful for your application to be notified when an item is removed from the cache. For example, you might want to track when and why items are removed from the cache in order to tune cache settings.</p>
            <p>To enable notification of items being removed from the cache, ASP.NET provides the <b>CacheItemRemovedCallback</b> delegate. The delegate defines the signature for an event handler to call when an item is removed from the cache. Typically, you implement the callback by creating a handler in a business object that manages the cache data.</p>
        </div>
    </form>
</body>
</html>

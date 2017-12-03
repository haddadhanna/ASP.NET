<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtensibleOutputCache.aspx.cs" Inherits="Caching.ExtensibleOutputCache" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Extensible Output Caching</h1>
            <h4>Home</h4>
            <p>ASP.NET adds extensibility to output caching that enables you to configure one or more custom output-cache providers. Output-cache providers can use any storage mechanism to persist HTML content. These storage options can include local or remote disks, cloud storage, and distributed cache engines.</p>
            <p>You create a custom output-cache provider as a class that derives from the OutputCacheProvider type. You can then configure the provider in the Web.config file by using the new providers subsection of the outputCache element.</p>
        </div>
    </form>
</body>
</html>

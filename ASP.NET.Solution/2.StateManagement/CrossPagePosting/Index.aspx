<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CrossPagePosting.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cross-Page Posting in ASP.NET Web Forms</h1>
            <a href="MyForm1.aspx">Go to Test page</a>
            <p>
                Under some circumstances, you might want to post one page to another page. 
               For example, you might be creating a multi-page form that collects different information on each page. 
               In that case, you can configure certain controls on the page to post to a different target page. This is referred to as cross-page posting.
            </p>
            <p>The Page class exposes a property named PreviousPage. If the source page and target page are in the same ASP.NET application, the PreviousPage property in the target page contains a reference to the source page. (If the page is not the target of a cross-page posting, or if the pages are in different applications, the PreviousPage property is not initialized.) By default, the PreviousPage property is typed as Page.</p>
            <p>To get public members of the source page, you must first get a strongly typed reference to the source page. You can do so in a number of ways. The first is to include an <b>@ PreviousPageType</b> directive in the target page, which allows you to specify the source page, as in this example:</p>
            <pre>&lt;%@ PreviousPageType VirtualPath="~/SourcePage.aspx" %&gt; </pre>
            <h3>Redirecting Users to Another Web Forms Page</h3>
            <ul>
                <li>Using hyperlinks on pages</li>
                <li>Configuring cross-page posting, which enables you to specify an alternate target page when the current page is submitted (<b>PostBackUrl</b>)</li>
                <li>Redirecting programmatically by forcing the browser to request a different page (<b>Response.Redirect</b>)</li>
                <li>Redirecting programmatically by transferring control to a different page in the same Web application(<b>Server.Transfer</b>).</li>
            </ul>
            <p>
                Reference: <a href="https://msdn.microsoft.com/en-us/library/ms178139.aspx">https://msdn.microsoft.com/en-us/library/ms178139.aspx</a><br />
                <a href="https://msdn.microsoft.com/en-us/library/x3x8t37x.aspx">https://msdn.microsoft.com/en-us/library/x3x8t37x.aspx</a>
            </p>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStrings.aspx.cs" Inherits="StateManagement.QueryStrings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Query Strings</h1>
            <a href="Index.aspx">
                <h4>Home</h4>
            </a>
            <p>
                A query string is information that is appended to the end of a page URL. A typical query string might look like the following example:
                <pre style="color: black">    http://www.contoso.com/listwidgets.aspx?category=basic&amp;price=100</pre>
            </p>
            <p>In the URL path above, the query string starts with a question mark (?) and includes two attribute/value pairs, one called "category" and the other called "price."</p>
            <p>Query strings provide a simple but limited way to maintain state information. For example, they are an easy way to pass information from one page to another, such as passing a product number from one page to another page where it will be processed. However, some browsers and client devices impose a 2083-character limit on the length of the URL.</p>
            <p>In order for query string values to be available during page processing, you must submit the page using an HTTP GET command. That is, you cannot take advantage of a query string if a page is processed in response to an HTTP POST command. </p>
        </div>
    </form>
</body>
</html>

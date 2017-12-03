<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="StateManagement.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET State Management Overview</h1>
            <p>A new instance of the Web page class is created each time the page is posted to the server. In traditional Web programming, this would typically mean that all information associated with the page and the controls on the page would be lost with each round trip. For example, if a user enters information into a text box, that information would be lost in the round trip from the browser or client device to the server.</p>
            <p>To overcome this inherent limitation of traditional Web programming, ASP.NET includes several options that help you preserve data on both a per-page basis and an application-wide basis. These features are as follows:</p>
            <ul>
                <li><a href="ViewState.aspx">View state</a><sup style="font-size: 10px;">(1)</sup></li>
                <li><a href="ControlState.aspx">Control state</a><sup style="font-size: 10px;">(1)</sup></li>
                <li><a href="HiddenField.aspx">Hidden fields</a><sup style="font-size: 10px;">(1)</sup></li>
                <li><a href="Cookies.aspx">Cookies</a><sup style="font-size: 10px;">(1)</sup></li>
                <li><a href="QueryStrings.aspx">Query strings</a><sup style="font-size: 10px;">(1)</sup></li>
                <li><a href="ApplicationState.aspx">Application state</a><sup style="font-size: 10px;">(2)</sup></li>
                <li><a href="SessionState.aspx">Session state</a><sup style="font-size: 10px;">(2)</sup></li>
                <li>Profile Properties<sup style="font-size: 10px;">(2)</sup></li>
            </ul>
            <p>View state, control state, hidden fields, cookies, and query strings all involve storing data on the client in various ways. However, application state, session state, and profile properties all store data in memory on the server. Each option has distinct advantages and disadvantages, depending on the scenario.</p>
            <p>
                <sup style="font-size: 10px;">(1)</sup> Client-Based State Management Options<br />
                <sup style="font-size: 10px;">(2)</sup> Server-Based State Management Options
            </p>
        </div>
    </form>
</body>
</html>

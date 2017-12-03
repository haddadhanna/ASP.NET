<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionState.aspx.cs" Inherits="StateManagement.SessionState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET Session State</h1>
            <a href="Index.aspx">
                <h4>Home</h4>
            </a>
            <p>Session state is similar to application state, except that it is scoped to the current browser session. If different users are using your application, each user session will have a different session state. In addition, if a user leaves your application and then returns later, the second user session will have a different session state from the first.</p>
            <p>Session variables are stored in a <b>SessionStateItemCollection</b> object that is exposed through the <b>HttpContext.Session</b> property. In an ASP.NET page, the current session variables are exposed through the <b>Session</b> property of the <b>Page</b> object.</p>
            <p>Sessions are identified by a unique identifier that can be read by using the <b>SessionID</b> property. When session state is enabled for an ASP.NET application, each request for a page in the application is examined for a <b>SessionID</b> value sent from the browser. If no <b>SessionID</b> value is supplied, ASP.NET starts a new session and the <b>SessionID</b> value for that session is sent to the browser with the response.</p>
            <p>By default, <b>SessionID</b> values are stored in a cookie. However, you can also configure the application to store <b>SessionID</b> values in the URL for a "cookieless" session.</p>
            <p>A session is considered active as long as requests continue to be made with the same SessionID value. If the time between requests for a particular session exceeds the specified time-out value in minutes, the session is considered expired. Requests made with an expired SessionID value result in a new session.</p>
            <p>By default, the SessionID value is stored in a non-expiring session cookie in the browser. However, you can specify that session identifiers should not be stored in a cookie by setting the cookieless attribute to true in the sessionState section of the Web.config file:</p>
            <pre>
&lt;configuration>
  &lt;system.web>
    &lt;sessionState cookieless="true"
      regenerateExpiredSessionId="true" />
  &lt;/system.web>
&lt;/configuration>
        </pre>
            <p>Session-State Modes:</p>
            <ul>
                <li><b>InProc </b>mode, which stores session state in memory on the Web server. This is the default.</li>
                <li><b>StateServer </b>mode, which stores session state in a separate process called the ASP.NET state service. This ensures that session state is preserved if the Web application is restarted and also makes session state available to multiple Web servers in a Web farm.</li>
                <li><b>SQLServer </b>mode stores session state in a SQL Server database. This ensures that session state is preserved if the Web application is restarted and also makes session state available to multiple Web servers in a Web farm.</li>
                <li><b>Custom </b>mode, which enables you to specify a custom storage provider.</li>
                <li><b>Off </b>mode, which disables session state.</li>
            </ul>
        </div>
    </form>
</body>
</html>

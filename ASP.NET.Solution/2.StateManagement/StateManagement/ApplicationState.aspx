<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationState.aspx.cs" Inherits="StateManagement.ApplicationState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET Application State</h1>
            <a href="Index.aspx">
                <h4>Home</h4>
            </a>
            <p>Application state is a data repository available to all classes in an ASP.NET application. Application state is stored in memory on the server and is faster than storing and retrieving information in a database. Unlike session state, which is specific to a single user session, application state applies to all users and sessions. Therefore, application state is a useful place to store small amounts of often-used data that does not change from one user to another.</p>
            <p>Application state is stored in an instance of the <b>HttpApplicationState</b> class. This class exposes a key-value dictionary of objects.The <b>HttpApplicationState</b> instance is created the first time a user accesses any URL resource in an application. The <b>HttpApplicationState</b> class is most often accessed through the <b>Application</b> property of the <b>HttpContext</b> class.</p>
            <p>You can use application state in two ways. You can add, access, or remove values from the Contents collection directly through code. The <b>HttpApplicationState</b> class can be accessed at any time during the life of an application. However, it is often useful to load application state data when the application starts. To do so, you can put code to load application state into the <b>Application_Start</b> method in the <b>Global.asax</b> file.</p>
        </div>
    </form>
</body>
</html>

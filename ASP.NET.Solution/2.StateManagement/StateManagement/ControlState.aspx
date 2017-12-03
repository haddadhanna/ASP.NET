<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlState.aspx.cs" Inherits="StateManagement.ControlState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET Control State</h1>
            <a href="Index.aspx">
                <h4>Home</h4>
            </a>
            <p>In addition to view state, ASP.NET supports control state. The page uses control state to persist control information that must be retained between postbacks, even if view state is disabled for the page or for a control (control state cannot be disabled). Like view state, control state is stored in one or more hidden fields.</p>
            <p>Reference: https://msdn.microsoft.com/en-us/library/1whwt1k7.aspx </p>
        </div>
    </form>
</body>
</html>

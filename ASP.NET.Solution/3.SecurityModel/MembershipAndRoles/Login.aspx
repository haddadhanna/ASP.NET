<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MembershipAndRoles.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login Page</h1>
            <div>
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </div>
            <asp:Login ID="ctlLogin" runat="server" TitleText=""></asp:Login>
            <asp:LoginView ID="ctlLoginView" runat="server">
                <AnonymousTemplate>
                    You are not logged in. Click the Login link to sign in. 
                </AnonymousTemplate>
                <LoggedInTemplate>
                    You are logged in. Welcome,<asp:LoginName ID="LoginName1" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
            <asp:ValidationSummary ID="validationSummary" runat="server" ValidationGroup="ctlLogin" />
        </div>
    </form>
</body>
</html>

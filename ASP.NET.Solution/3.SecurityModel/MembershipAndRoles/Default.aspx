<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MembershipAndRoles.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>My Home Page</h1>
            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="About" Value="About"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/MembersPages/Members.aspx" Text="Members-only" Value="Members-only"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AdminPages/Admin.aspx" Text="Administrators" Value="Administrators"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <a href="MembersPages/Members.aspx">Members Only</a><br />
            <br />
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <a href="Register.aspx">Register</a>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <a href="MembersPages/ChangePassword.aspx">Change Password</a>
                </LoggedInTemplate>
            </asp:LoginView>
            <p>Reference: <a href="https://msdn.microsoft.com/en-us/library/879kf95c.aspx">https://msdn.microsoft.com/en-us/library/879kf95c.aspx</a></p>
        </div>
    </form>
</body>
</html>

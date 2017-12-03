<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyForm2.aspx.cs" Inherits="CrossPagePosting.MyForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Empty"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Empty"></asp:Label><br />
            <asp:Button ID="btn" Text="click" runat="server" OnClick="btn_Click" />
        </div>
    </form>
</body>
</html>

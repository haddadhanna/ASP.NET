<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyForm1.aspx.cs" Inherits="CrossPagePosting.MyForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Text1:<asp:TextBox ID="TextBox1" runat="server" Text="val1"></asp:TextBox><br />
            Text2:<asp:TextBox ID="TextBox2" runat="server" Text="val2"></asp:TextBox><br />
            Text3:<asp:TextBox ID="TextBox3" runat="server" Text="val3"></asp:TextBox><br />
            <a href="MyForm2.aspx">Go Next(HTML Link)</a>
            <asp:Button runat="server" ID="button1" Text="Go Next(Response.Redirect)" OnClick="button1_Click" />
            <asp:Button runat="server" ID="button2" Text="Go Next(Cross-post)" PostBackUrl="~/MyForm2.aspx" />
            <asp:Button runat="server" ID="button3" Text="Go Next(Server.Transfer)" OnClick="button3_Click" />
        </div>
    </form>
</body>
</html>

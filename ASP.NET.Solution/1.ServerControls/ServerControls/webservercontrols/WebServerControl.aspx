<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="WebServerControl.aspx.cs" Inherits="ServerControls.WebServerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Web server controls</h2>
        <p>Web server controls include traditional form controls such as buttons and text boxes as well as complex controls such as tables. They do not necessarily map one-to-one to HTML server controls. For example, a RadioButtonList Web server control might be rendered in a table or as inline text with other markup.</p>
        <p>This is an ASP Textbox:
            <asp:TextBox runat="server" ID="textbox1" /></p>
        <p>This is an ASP Button:
            <asp:Button runat="server" ID="button1" Text="Button" /></p>
        <p>
            This is a radio button list: 
                <asp:RadioButtonList runat="server" ID="radiobuttonlist1">
                    <asp:ListItem Text="option1" Value="1">Option 1</asp:ListItem>
                    <asp:ListItem Text="option2" Value="2">Option 2</asp:ListItem>
                    <asp:ListItem Text="option3" Value="3">Option 3</asp:ListItem>
                    <asp:ListItem Text="option4" Value="4">Option 4</asp:ListItem>
                    <asp:ListItem Text="option5" Value="5">Option 5</asp:ListItem>
                </asp:RadioButtonList>
        </p>
    </div>
</asp:Content>

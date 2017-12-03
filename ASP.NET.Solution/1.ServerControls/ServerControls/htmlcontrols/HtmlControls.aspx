<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="HtmlControls.aspx.cs" Inherits="ServerControls.HtmlControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>HTML server controls</h2>
        <p>
            HTML elements are not available to server in an ASP.NET page, instead they are treated as text and passed through to the browser. Any HTML element can be converted to HTML sever controls by adding the attribute <b>runat=&quot;server&quot;</b>
        </p>
        <p>
            This is an HTML control (input):
            <input type="text" />
        </p>
        <p>
            This is an HTML server control (filled from server side):<input id="inputControl" runat="server" type="text" />
        </p>
    </div>
</asp:Content>

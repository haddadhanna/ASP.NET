<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="CustomControls.aspx.cs" Inherits="ServerControls.CustomControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Custom Controls</h2>
        <p>Web custom controls are compiled components that run on the server. Custom controls inherit the Control class. The custom control can be added in a seperate project, and compiled into dll to be used in other projects.</p>
        <p>The following example is an custom control inherits from Textbox that has a label.(In the following example the custom controls is created in the same project):</p>
        <div>
            <MyCustom:LabledTextBox ID="LabledTextBox1" runat="server" LabelText="FirstName" LabelWidth="120" /><br />
            <MyCustom:LabledTextBox ID="LabledTextBox2" runat="server" LabelText="LastName" LabelWidth="120" /><br />
            <MyCustom:LabledTextBox ID="LabledTextBox3" runat="server" LabelText="EmailAddress" LabelWidth="120" /><br />
        </div>
        <div>
            <p>A configuration has been added to web.config to reference the custom control</p>
            <pre>
    &lt;pages&gt;
        &lt;controls&gt;
            &lt;add tagPrefix="MyCustom" assembly="ServerControls"  namespace="ServerControls" /&gt;
        &lt;/controls&gt;
    &lt;/pages&gt;
                </pre>
        </div>
    </div>
</asp:Content>

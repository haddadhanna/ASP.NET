<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="ValidationControl.aspx.cs" Inherits="ServerControls.ValidationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Validation ASP.NET Controls</h2>
        <p>ASP.NET provides a set of validation controls that helps to check for errors and display messages to the users.</p>
        <p>
            To use the validation controls you need to enable the built-in validator controls to use unobtrusive JavaScript for client-side validation logic, by adding the following configuration:
                <pre>
    &lt;appSettings&gt;
        &lt;add key="ValidationSettings:UnobtrusiveValidationMode" value="None" /&gt;
    &lt;/appSettings&gt;
                </pre>
        </p>
        <div>
            <h3>Validation form:</h3>
            <table>
                <tr>
                    <td>First name <span style="color: red">*</span>:
                            <asp:TextBox runat="server" ID="txtFirstName" />
                        <asp:RequiredFieldValidator runat="server" ID="requiredFieldValidator1" ControlToValidate="txtFirstName" ErrorMessage="The first name is required" />
                    </td>
                </tr>
                <tr>
                    <td>Enter a value <span style="color: red">*</span>:
                            <asp:TextBox runat="server" ID="txtValue" />
                        <asp:RequiredFieldValidator runat="server" ID="requiredFieldValidator2" ControlToValidate="txtValue" ErrorMessage="The text is required" Display="Dynamic" />
                        <asp:CustomValidator runat="server" ID="customValidator1" OnServerValidate="customValidator1_ServerValidate" ControlToValidate="txtValue" ErrorMessage="enter 'Hello world!!' to pass the validation" Display="Dynamic" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="btnSubmit" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

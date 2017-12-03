<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="StateManagement.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ASP.NET View State</h1>
            <a href="Index.aspx">
                <h4>Home</h4>
            </a>
            <p>View state is the method that the ASP.NET page framework uses to preserve page and control values between round trips. When the HTML markup for the page is rendered, the current state of the page and values that must be retained during postback are serialized into base64-encoded strings. This information is then put into the view state hidden field or fields.</p>
            <p>View state is enabled by default, but some controls on a page might not need view state. For example, if a control is refreshed from the data store on each postback, you can turn view state off for that control in order to reduce the size of view state.</p>
            <p>You can configure controls so that view state is disabled by default for all controls within a page or a container control, and you can then enable view state for specific controls. You can also configure controls so that view state is disabled and cannot be enabled for child controls.</p>
            <p>To disable view state for a control by default so that it can be enabled for child controls, set the <b>ViewStateMode</b> property of the control to <b>Disabled</b>. To disable view state by default for an entire page, set the <b>ViewStateMode</b> attribute of the <b>@Page</b> directive to <b>Disabled</b>.</p>
            <p>To disable view state for a control and its children so that it cannot be enabled for child controls, set the <b>EnableViewState</b> property of the control to <b>false</b>. To disable view state for an entire page and all of its child controls, set the <b>EnableViewState</b> attribute of the <b>@Page</b> directive to <b>false</b>.</p>
            <p>To encrypt the data, set the page's ViewStateEncryptionMode property to true. If you store information in view state, you can use regular read and write techniques; the page handles all encryption and decryption for you. Encrypting view state data can affect the performance of your application. Therefore, do not use encryption unless you need it.</p>
            <p>Reference: https://msdn.microsoft.com/en-us/library/bb386448(v=vs.100).aspx </p>
        </div>
    </form>
</body>
</html>

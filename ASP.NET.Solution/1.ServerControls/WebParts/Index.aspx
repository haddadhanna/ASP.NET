<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebParts.Index" %>

<%@ Register Src="~/SearchUserControl.ascx" TagPrefix="uc1" TagName="SearchUserControl" %>


<%@ Register Src="DisplayModeMenu.ascx" TagName="DisplayModeMenu" TagPrefix="uc2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Parts</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Web Parts Demonstration Page</h1>
            <h5><a href="https://msdn.microsoft.com/en-us/library/sk23dydw.aspx">Reference to this example</a></h5>
            <uc2:DisplayModeMenu ID="DisplayModeMenu1" runat="server" />
            <a href="Help.aspx">
                <h4>Go to Help</h4>
            </a>
            <asp:WebPartManager ID="webpartManager" runat="server">
            </asp:WebPartManager>
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:WebPartZone ID="SidebarZone1" runat="server" HeaderText="Sidebar">
                            <ZoneTemplate>
                                <asp:Label runat="server" ID="linksPart1" title="My Links">
                                  <a href="http://www.asp.net">ASP.NET site</a><br />
                                  <a href="http://www.gotdotnet.com">GotDotNet</a><br />
                                  <a href="http://www.contoso.com">Contoso.com</a><br />
                                </asp:Label>
                                <uc1:SearchUserControl runat="server" ID="SearchUserControl2" />
                            </ZoneTemplate>
                        </asp:WebPartZone>
                    </td>
                    <td>
                        <asp:WebPartZone ID="MainZone1" runat="server" HeaderText="Main">
                            <ZoneTemplate>
                                <asp:Label ID="Label2" runat="server" Title="Content">
                        <h2>Welcome to My Home Page</h2>
                                </asp:Label>
                            </ZoneTemplate>
                            <CloseVerb ImageUrl="~/images/close.png" />
                            <DeleteVerb ImageUrl="~/images/delete.png" />
                            <MinimizeVerb ImageUrl="~/images/minimize.png" />
                            <RestoreVerb ImageUrl="~/images/restore.png" />
                        </asp:WebPartZone>
                    </td>
                    <td valign="top">
                        <asp:EditorZone ID="EditorZone1" runat="server">
                            <ZoneTemplate>
                                <asp:AppearanceEditorPart ID="AppearanceEditorPart1"
                                    runat="server" />
                                <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                            </ZoneTemplate>
                        </asp:EditorZone>
                        <asp:CatalogZone ID="CatalogZone1" runat="server" HeaderText="Add Webparts">
                            <ZoneTemplate>
                                <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1"
                                    runat="server">
                                    <WebPartsTemplate>
                                        <asp:Calendar ID="Calendar1"
                                            runat="server"
                                            title="My Calendar" />
                                        <asp:FileUpload ID="FileUpload1"
                                            runat="server"
                                            title="Upload Files" />
                                    </WebPartsTemplate>
                                </asp:DeclarativeCatalogPart>
                            </ZoneTemplate>
                        </asp:CatalogZone>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

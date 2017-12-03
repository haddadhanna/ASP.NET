<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="generator.ascx.cs" Inherits="ServerControls.generator" %>
 <asp:Label runat="server" ID="currNumber" Text="press generate" /> 
<button runat="server" id="btnGenerate" value="Generate" onserverclick="btnGenerate_ServerClick" >Generate</button>
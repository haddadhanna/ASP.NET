<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="UserControls.aspx.cs" Inherits="ServerControls.UserControls" %>
<%@ Register Src="~/usercontrols/generator.ascx" TagPrefix="uc1" TagName="generator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> <div>
            <h2>User Controls</h2>
            <p>A user control is a kind of composite control that works much like an ASP.NET Web page—you can add existing Web server controls and markup to a user control, and define properties and methods for the control. You can then embed them in ASP.NET Web pages, where they act as a unit.</p>
            <p>Below is an example of a user control that generate number between two values:</p>
            <div>
                <p>example 1:</p>
                <uc1:generator runat="server" id="generator" MinValue="1" MaxValue="10" />
            </div>
            <div>
                <p>example 2:</p>
                <uc1:generator runat="server" id="generator1" MinValue="10" MaxValue="100" />
            </div>
        </div>
</asp:Content>

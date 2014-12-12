<%@ Page Title="" Language="C#" MasterPageFile="~/Forseth.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="SocialForseth.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceholderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceholderBreadcrumbs" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PlaceholderMain" runat="server">
    Your Request for help has been submitted.

    Submitted email:
    <div class="mail">
        <b>Request for Help from User ID #<%=Session["uid"] %></b>
        <p>Hello support technician, User ID #<%=Session["uid"] %> has requested assistance!</p>
    </div>
</asp:Content>

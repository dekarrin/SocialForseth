﻿<%@ Page Title="SocialForseth" Language="C#" MasterPageFile="/Forseth.Master" AutoEventWireup="true" CodeBehind="FileClaim.aspx.cs" Inherits="SocialForseth.Default" %>
<%@ MasterType virtualpath="/Forseth.Master" %>

<asp:Content ID="ContentBreadcrumbs" ContentPlaceHolderID="PlaceholderBreadcrumbs" runat="server">
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="PlaceholderMain" runat="server">
    <div>
    	File a Claim:
	</div>
    <hr />
	<p>
		<asp:Label ID="LabelBadSubmission" runat="server" Text="Invalid upload file type. Only .pdf, .jpeg, and .png are allowed." Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#CC0000" Visible="False"></asp:Label>
	</p>
	<p>
		Claim Account:
        <asp:DropDownList ID="DropDownListAccount" runat="server">
            <asp:ListItem>HSA: $2603.29</asp:ListItem>
            <asp:ListItem>FSA: $10000.00</asp:ListItem>
            <asp:ListItem>VEBA: $291.99</asp:ListItem>
        </asp:DropDownList>
	</p>
		Claim Amount: $<asp:TextBox ID="TextBoxAmount" runat="server" ></asp:TextBox>
	<p>
        Claim Location:
        <asp:DropDownList ID="DropDownListProvider" runat="server">
            <asp:ListItem>Alina</asp:ListItem>
            <asp:ListItem>Sanford Health</asp:ListItem>
            <asp:ListItem>Mayo Clinic</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <%-- Set this field iteratively from the code as attachments are added --%>
        <asp:Label ID="LabelAttachments" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:ImageButton ID="ImageButtonUpload" runat="server" Text="Attach a File" OnClick="ButtonUpload_Click" src="/images/BrowseIcon.png" />
        <asp:Button ID="ButtonUpload" runat="server" Text="Attach a File" OnClick="ButtonUpload_Click" />
		<asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
	</p>
</asp:Content>
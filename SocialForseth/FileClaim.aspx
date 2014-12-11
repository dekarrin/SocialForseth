<%@ Page Title="SocialForseth" Language="C#" MasterPageFile="/Forseth.Master" AutoEventWireup="true" CodeBehind="FileClaim.aspx.cs" Inherits="SocialForseth.Default" %>
<%@ MasterType virtualpath="/Forseth.Master" %>

<asp:Content ID="ContentBreadcrumbs" ContentPlaceHolderID="PlaceholderBreadcrumbs" runat="server">
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="PlaceholderMain" runat="server">
    <div>
    	File a Claim:
	</div>
    <hr />
	<p>
		<asp:Label ID="LabelBadSubmission" runat="server" Text="Useful user feedback" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#CC0000" Visible="False"></asp:Label>
	</p>
	<p>
		Claim Account:
        <asp:DropDownList ID="DropDownListAccount" runat="server">
            <asp:ListItem>ProviderA</asp:ListItem>
            <asp:ListItem>ProviderB</asp:ListItem>
            <asp:ListItem>ProviderC</asp:ListItem>
        </asp:DropDownList>
	</p>
		Claim Amount: $<asp:TextBox ID="TextBoxAmount" runat="server"></asp:TextBox>
	<p>
        Claim Location:
        <asp:DropDownList ID="DropDownListProvider" runat="server">
            <asp:ListItem>LocationA</asp:ListItem>
            <asp:ListItem>LocationB</asp:ListItem>
            <asp:ListItem>LocationC</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <%-- Set this field iteratively from the code as attachments are added --%>
        <asp:Label ID="LabelAttachments" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:Button ID="ButtonUpload" runat="server" Text="Attach a File" OnClick="ButtonUpload_Click" />
		<asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
	</p>
</asp:Content>
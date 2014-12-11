<%@ Page Title="" Language="C#" MasterPageFile="/Forseth.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="SocialForseth.HCI.Upload" %>
<%@ MasterType virtualpath="/Forseth.Master" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="PlaceholderHead" runat="server">
</asp:Content>
<asp:Content ID="ContentBreadcrumbs" ContentPlaceHolderID="PlaceholderBreadcrumbs" runat="server">
    Upload <%-- Note: The max file size of an upload/attachment is 4MB --%>
</asp:Content>
<asp:Content ID="ContentMain" ContentPlaceHolderID="PlaceholderMain" runat="server">
    <p>
        File Path:   <asp:TextBox ID="TextBoxFilePath" runat="server">C:\</asp:TextBox>
    </p>
    <p>
        File Type:
        <asp:DropDownList ID="DropDownListFileType" runat="server">
            <%-- Supported file types go here --%>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="ButtonUpload" runat="server" Text="Upload" OnClick="ButtonUpload_Click" />
        <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
    </p>

</asp:Content>

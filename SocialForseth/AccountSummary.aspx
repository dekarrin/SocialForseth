<%@ Page Title="SocialForseth" Language="C#" MasterPageFile="/Forseth.Master" AutoEventWireup="true" CodeBehind="AccountSummary.aspx.cs" Inherits="SocialForseth.Default" %>
<%@ MasterType virtualpath="/Forseth.Master" %>

<asp:Content ID="ContentBreadcrumbs" ContentPlaceHolderID="PlaceholderBreadcrumbs" runat="server">
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="PlaceholderMain" runat="server">
    <div>
    	Your claims:
	</div>
    <hr />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="claimaccount" HeaderText="Account" SortExpression="claimaccount" />
            <asp:BoundField DataField="amount" HeaderText="Amount (cents)" SortExpression="amount" />
            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetClaims" TypeName="SocialForseth.Queries">
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    
</asp:Content>
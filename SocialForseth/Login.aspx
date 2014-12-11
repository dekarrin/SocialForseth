<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SocialForseth.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Please Log In</title>
	<link rel="stylesheet" type="text/css" href="Forseth.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    	Please login:</div>
    	<hr />
		<p>
			<asp:Label ID="LabelBadLogin" runat="server" Text="Bad username and/or password!" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#CC0000" Visible="False"></asp:Label>
		</p>
		<p>
			Username:<asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
		</p>
		    Password:<asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
		<p>
            Provider:
            <asp:DropDownList ID="DropDownListProvider" runat="server">
                <asp:ListItem>ProviderA</asp:ListItem>
                <asp:ListItem>ProviderB</asp:ListItem>
                <asp:ListItem>ProviderC</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
			<asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Log In" />
		</p>
    </form>
	<table class="bordered">
		<caption>Valid Logins</caption>
		<tr>
			<th>Username</th>
			<th>Password</th>
		</tr>
		<tr>
			<td>taldan</td>
			<td>penguins</td>
		</tr>
		<tr>
			<td>bickster</td>
			<td>monkey1</td>
		</tr>
	</table>
</body>
</html>

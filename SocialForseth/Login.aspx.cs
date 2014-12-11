using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace SocialForseth
{
	public partial class Login : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["uid"] != null)
			{
				Response.Redirect("/FileClaim.aspx");
			}
			LabelBadLogin.Visible = false;
		}

		protected void ButtonLogin_Click(object sender, EventArgs e)
		{
			UnicodeEncoding enc = new UnicodeEncoding();
			HashAlgorithm hasher = new SHA1Managed();
			byte[] bytes = hasher.ComputeHash(enc.GetBytes(TextBoxPassword.Text));
			string hash = enc.GetString(bytes);
			string user = TextBoxUsername.Text;
			int uid = Queries.CheckLogin(user, hash);
			if (uid >= 0)
			{
				Session["uid"] = uid;
				Response.Redirect("/FileClaim.aspx");
			}
			else
			{
				LabelBadLogin.Visible = true;
			}
		}
	}
}
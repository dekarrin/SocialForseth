using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace SocialForseth
{
	public partial class Forseth : System.Web.UI.MasterPage
	{
		// the account of the logged in user.
		public account ActiveAccount = null;

		/// <summary>
		/// Gets the owner account from a user id. Passes directly to the Queries.cs
		/// function. This method was created so forms can easily access user id
		/// translation into full accounts, as Queries.cs appears to be inaccessible from
		/// within the ASPX pages themselves.
		/// </summary>
		/// <param name="uid"></param>
		/// <returns></returns>
		public account GetAccount(int uid)
		{
			return Queries.GetAccount(uid);
		}

		protected void Page_Init(object sender, EventArgs e)
		{
			// require login
			if (Session["uid"] == null)
			{
				Response.Redirect("/Login.aspx");
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			ActiveAccount = Queries.GetAccount((int)Session["uid"]);
		}

		protected void ButtonLogout_Click(object sender, EventArgs e)
		{
			Logout();
		}

		private void Logout()
		{
			Session.Clear();
			Response.Redirect(Request.RawUrl);
		}

        protected void ButtonAccountSummary_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AccountSummary.aspx");
        }

        protected void ButtonFileClaim_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FileClaim.aspx");
        }

        protected void ImageButtonHelp_Click(object sender, EventArgs e)
        {
            /*
            MailMessage mail = new MailMessage("dabickster@gmail.com", "j.caesarism@gmail.com"); //Personal emails are used here. In production they will be replaced with technician accounts.
            SmtpClient client = new SmtpClient();
            client.Port = 25;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Host = "smtp.gmail.com";
            mail.Subject = "Request for Help from " + Session["uid"];
            mail.Body = "Hello support technician, " + Session["uid"] + "has requested assistance!";
            client.Send(mail);*/
            Response.Redirect("/Help.aspx");
        }
	}
}
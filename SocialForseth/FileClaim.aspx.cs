using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialForseth
{
    public partial class Default : System.Web.UI.Page
    {
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Queries.AddClaim(DropDownListAccount.SelectedValue, TextBoxAmount.Text, DropDownListProvider.SelectedValue, (int)Session["uid"]);
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }
    }
}
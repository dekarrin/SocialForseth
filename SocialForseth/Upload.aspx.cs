using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SocialForseth.HCI
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FileClaim.aspx");
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            switch(DropDownListFileType.SelectedValue)
            {
                case(".txt"):
                    string line;
                    StreamReader file = new System.IO.StreamReader(TextBoxFilePath.Text);
                    while ( (line = file.ReadLine() ) != null)
                    {
                        //Save line to a usable format
                        //Console.WriteLine(line);
                    }
                    break;
                default:
                    break;
            }

            //Save File to a Session variable
            //Session["X"] = file
            Response.Redirect("/FileClaim.aspx");
        }
    }
}
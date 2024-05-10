using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                LoginRegister.Visible = true;
                WelcomeUser.Visible = false;
            }
            else
            {
                LoginRegister.Visible = false;
                WelcomeUser.Visible = true;
            }

        }

        protected void Logout_Click(Object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("login.aspx");



        }
        //Todo

    }
}
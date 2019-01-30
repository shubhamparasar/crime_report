using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            clsRegistration user = new clsRegistration();
            user = (clsRegistration)Session["user"];
            lbluser.Text = user.Name;
        }
        else
        {
            lbluser.Text = "Guest";
        }
    }
}
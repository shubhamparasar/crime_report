using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userinfo"] != null)
        {
            Response.Redirect("aftrAdminLogin.aspx");
        }

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        clsRegistration objreg = new clsRegistration();
        objreg.EmailId = txtname.Text;
        objreg.Password = txtpass.Text;
        DataSet ds = objreg.getAdminsbyusernamepassword();
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblerror.Text = "Invalid User Name and Password.Try Again";

        }
        else
        {
            //DataRow dr = ds.Tables[0].Rows[0];
            //objreg.FirstName = dr["firstname"].ToString();
            //objreg.LastName = dr["lastname"].ToString();

            //creating a sesstion
            Session["userinfo"] = objreg;
            //  Session["username"] = objreg.FirstName + " " + objreg.LastName;
            Session.Timeout = 1;
            //at run time redirect the page
            Response.Redirect("aftrAdminLogin.aspx");
        }
    }
}
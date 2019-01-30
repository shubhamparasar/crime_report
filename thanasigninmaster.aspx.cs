using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thanasigninmaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsThana objreg = new clsThana();
        objreg.email = txtname.Text;
        objreg.password = txtpass.Text;
        DataSet ds = objreg.getUsersbyusernameNpassword();
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblerror.Text = "Invalid User Name and Password.Try Again";

        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            objreg.name = dr["psName"].ToString();
            objreg.psID=dr["psID"].ToString();
            //creating a sesstion
            Session["userinfo"] = objreg;
            Session["username"] = objreg.name;
            Session["psID"] = objreg.psID;
            Session.Timeout = 1;
            //at run time redirect the page
            Response.Redirect("viewThanaRecord.aspx");
        }
    }
}
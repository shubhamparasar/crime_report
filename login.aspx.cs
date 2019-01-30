using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("fir.aspx");
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        clsRegistration objreg = new clsRegistration();
        //objreg.Name = txtname.Text;
        objreg.EmailId = txtname.Text;
        objreg.Password = txtpass.Text;
        DataSet ds = objreg.getUsersbyusernamepassword();
        if (ds.Tables[0].Rows.Count == 0)
        {
           lblerror.Text = "Invalid User Name and Password.Try Again";
           Response.Redirect("login.aspx");
        }
        else
        {
            //DataRow dr = ds.Tables[0].Rows[0];
            //objreg.FirstName = dr["firstname"].ToString();
            //objreg.LastName = dr["lastname"].ToString();

            //creating a sesstion
            Session["user"] = objreg;
            DataRow dr = ds.Tables[0].Rows[0];
            objreg.Name = dr["Name"].ToString();
            //  Session["username"] = objreg.FirstName + " " + objreg.LastName;
         //   Session.Timeout = 1;
            //at run time redirect the page
            Response.Redirect("fir.aspx");
        }

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

    }
}
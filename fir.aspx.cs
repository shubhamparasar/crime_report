using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        txtid.Text = ((clsRegistration)Session["user"]).EmailId;

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
       


    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        clsfir obj = new clsfir();
        obj.ThanaId = txtthanaid.Text;
        obj.ThanaName = txtname.Text;
        obj.FIRDate = txtdate.Text;
        obj.Reason = txtreason.Text;
        obj.UserId = txtid.Text;
       
        obj.FIRfor = txtfor.Text;
        int result = obj.InsertRecord();
        if (result == 1)
        {
            lblmsg.Text = "record is inserted ";
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("check.aspx");
    }
}
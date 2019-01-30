using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebAddThanaAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsAddthanaAdmin obj = new clsAddthanaAdmin();
        try
        {
            obj.ThanaID =txtid.Text;
            obj.ThanaName = txtname.Text;
            obj.Contact =txtcontact.Text;
            obj.Email = txtemail.Text;
            obj.OfficerName = txtofficer.Text;
            obj.Pincode = txtpin.Text;
            if (obj.checkPoliceDuplicate() == false)
            {
                int result = obj.InsertRecord();
                if (result == 1)
                {
                    lblmsg.Text = "record is Inserted Successfully";
                }
            }
            else
            {
                lblmsg.Text = "PoliceID " + obj.ThanaID + " Already exits";
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
}
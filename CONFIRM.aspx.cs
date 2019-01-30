using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class CONFIRM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsfir obj = new clsfir();
        obj.UserId = txtemail.Text;;
        obj.AadharId = txtdob.Text;
        DataSet db = obj.selectByUser();
        if (db.Tables[0].Rows.Count == 0)
        {
            lblstatus.Text = "Invalid ID or Aadhar";
            Response.Redirect("CONFIRM.aspx");
        }
        else
        {
            DataRow dr = db.Tables[0].Rows[0];
            lblstatus.Text = dr["Password"].ToString();
        }
    }
}
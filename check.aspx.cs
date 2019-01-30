using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsfir obj = new clsfir();
        obj.FIRNo =int.Parse( txtfir.Text);
        obj.ThanaId = txtthana.Text;
        DataSet db = obj.SelectByFir();
        DataRow dr=db.Tables[0].Rows[0];
        lblstatus.Text = dr["Status"].ToString();


    }
}
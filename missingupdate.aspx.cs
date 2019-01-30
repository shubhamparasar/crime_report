using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class missingupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clsRegistrationMissing objreg = new clsRegistrationMissing();
        DataSet ds = objreg.getAllData();
        // GridView1.DataSource = ds.Tables[0];
        // GridView1.DataBind();
        //populateGridView();
        //set the datasource of the drop down list box
        cmbid.DataSource = ds.Tables[0];
        cmbid.DataTextField = "psID";
        cmbid.DataValueField = "MissingPersonName";
        cmbid.DataBind();
    }
    protected void cmbid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {

    }
}
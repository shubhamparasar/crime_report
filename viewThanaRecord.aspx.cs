using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewThanaRecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userinfo"] == null)
        {
            Response.Redirect("thanasigninmaster.aspx");
        }
        if (!this.IsPostBack)
        {
            populateGridView();
        }

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //cancel edit mode
        GridView1.EditIndex = -1;
        //populate the grdiview
        populateGridView();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    private void populateGridView()
    {
        clsfir objcat = new clsfir();
        DataSet ds = objcat.getAllWhereEmail((string)Session["psID"]);
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblmsg.Text = "No Record found for this Thana";
        }
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
}
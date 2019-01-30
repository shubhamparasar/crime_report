using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fir_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
        DataSet ds = objcat.getAllData();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //get the row no
        int editrow = e.NewEditIndex;
        //Set the row to edit mode
        GridView1.EditIndex = editrow;
        //populate the grdiview
        populateGridView();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //get the row no to update
        int rowno = e.RowIndex;
        string FIRNo = GridView1.Rows[rowno].Cells[1].Text;
        clsfir objcate = new clsfir();
        objcate.FIRNo = int.Parse(FIRNo);

        objcate.DeleteCategory();
        //remove the edit mode
        GridView1.EditIndex = -1;

        populateGridView();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //get the row no to update
        int rowno = e.RowIndex;
        //get the new value of the categoryname
        //TextBox txtcatname = (TextBox)GridView1.Rows[rowno].Cells[1].Controls[0];
        //get the categoryid
        TextBox txtcatDate = (TextBox)GridView1.Rows[rowno].Cells[4].Controls[0];
        TextBox txtreason = (TextBox)GridView1.Rows[rowno].Cells[5].Controls[0];
        TextBox txtuser = (TextBox)GridView1.Rows[rowno].Cells[6].Controls[0];
        TextBox txtstatus = (TextBox)GridView1.Rows[rowno].Cells[7].Controls[0];
        TextBox txtfir = (TextBox)GridView1.Rows[rowno].Cells[8].Controls[0];
        TextBox txtname = (TextBox)GridView1.Rows[rowno].Cells[2].Controls[0];
        TextBox txtthanaid = (TextBox)GridView1.Rows[rowno].Cells[1].Controls[0];
        TextBox txttfirid = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
        clsfir objcate = new clsfir();
        objcate.FIRDate = txtcatDate.Text;
        objcate.Reason = txtreason.Text;
        objcate.UserId = txtuser.Text;
        objcate.Status = txtstatus.Text;
        objcate.FIRfor = txtfir.Text;
        objcate.FIRNo = int.Parse(txttfirid.Text);
        objcate.ThanaId = txtthanaid.Text;
        objcate.ThanaName = txtname.Text;

        objcate.UpdateCategory();
        //remove the edit mode
        GridView1.EditIndex = -1;

        populateGridView();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //get the page index no
        int pageindexno = e.NewPageIndex;
        //set the gridview the new page index no
        GridView1.PageIndex = pageindexno;
        //again i have to bind the grdiview
        populateGridView();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
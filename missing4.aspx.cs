using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class missing4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userinfo"] == null)
        {
            Response.Redirect("admlogin.aspx");
        }
        if (!this.IsPostBack)
        {
            populateGridView();
        }

        /*clsRegistrationMissing objreg = new clsRegistrationMissing();
      DataSet ds=  objreg.getAllData();
     // GridView1.DataSource = ds.Tables[0];
     // GridView1.DataBind();
      populateGridView();
       ///set the datasource of the dro[ down list box
      DropDownList1.DataSource = ds.Tables[0];
      DropDownList1.DataTextField = "psID";
      DropDownList1.DataValueField = "MissingPersonName";
      DropDownList1.DataBind();
   // lblmsg.Text="Text="+  DropDownList1.SelectedItem.Text;
   // lblmsg.Text +="Value="+  DropDownList1.SelectedItem.Value;*/

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Label1.Text = "Welcome To Asp.NET";
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //get the page index no
        int pageindexno = e.NewPageIndex;
        //now set the page no
        GridView1.PageIndex = pageindexno;
        //bind the grid view again
        populateGridView();


    }

    private void populateGridView()
    {
        clsRegistrationMissing objcat = new clsRegistrationMissing();
        DataSet ds = objcat.getAllCategory();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        //get the page index no
        int pageindexno = e.NewPageIndex;
        //set the gridview the new page index no
        GridView1.PageIndex = pageindexno;
        //again i have to bind the grdiview
        populateGridView();
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
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //cancel edit mode
        GridView1.EditIndex = -1;
        //populate the grdiview
        populateGridView();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    /*protected void Button1_Click1(object sender, EventArgs e)
    {
        lblmsg.Text = "text=" + DropDownList1.SelectedItem.Text;
        lblmsg.Text += "value=" + DropDownList1.SelectedItem.Value;

    }*/
    /*protected void Button1_Click2(object sender, EventArgs e)
    {
        clsRegistrationMissing objcat = new clsRegistrationMissing();
        objcat.psID = int.Parse(DropDownList1.SelectedItem.Value);
        DataSet ds = objcat.getCategoryByID();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
    }*/
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //get the row no to updatelj
        int rowno = e.RowIndex;
        string catid = GridView1.Rows[rowno].Cells[2].Text;
        string contactno = GridView1.Rows[rowno].Cells[5].Text;
        clsRegistrationMissing objcate = new clsRegistrationMissing();
        objcate.psID = catid;
        objcate.contact = contactno;
        objcate.DeleteCategory();
        //remove the edit mode
        GridView1.EditIndex = -1;

        populateGridView();
    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {

        int rowno = e.RowIndex;
        TextBox txtname = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
        //get the categoryid
        TextBox txtid = (TextBox)GridView1.Rows[rowno].Cells[2].Controls[0];
        TextBox txtdesc = (TextBox)GridView1.Rows[rowno].Cells[4].Controls[0];
        TextBox txtcn = (TextBox)GridView1.Rows[rowno].Cells[5].Controls[0];
        clsRegistrationMissing objcate = new clsRegistrationMissing();
        objcate.psID = txtid.Text;
        objcate.name = txtname.Text;
        objcate.description = txtdesc.Text;
        objcate.contact = txtcn.Text;
        objcate.UpdateCategory();
        //remove the edit mode
        GridView1.EditIndex = -1;

        populateGridView();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
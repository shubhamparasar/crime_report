using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thanaUpdateAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userinfo"] == null)
        {
            Response.Redirect("admlogin.aspx");
        }
        if (!this.IsPostBack)
        {

            //clsRegistrationMostWanted objreg = new clsRegistrationMostWanted();
            //DataSet ds = objreg.getAllData();
            /*string filename = FileUpload();
            Image1.ImageUrl = "userimages/" + filename;
            Image1.Height = Unit.Pixel(50);
            Image1.Width = Unit.Pixel(50);*/
            // GridView1.DataSource = ds.Tables[0];
            // GridView1.DataBind();
            populateGridView();
            ///set the datasource of the dro[ down list box
            /* DropDownList1.DataSource = ds.Tables[0];
             DropDownList1.DataTextField = "thanaId";
             DropDownList1.DataValueField = "Name";
             DropDownList1.DataBind();*/
            // lblmsg.Text="Text="+  DropDownList1.SelectedItem.Text;
            // lblmsg.Text +="Value="+  DropDownList1.SelectedItem.Value;
        }
    }
    /*public String FileUpload()
    {
        //get the filename from the path
        String filename = "no_image_available.gif";
        //need to check the fileupload control contains any file or not
        if (FileUpload1.HasFile)
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            String ext = filename.Substring(filename.LastIndexOf("."));
            string newfilename = DateTime.Now.Ticks + ext;
            filename = newfilename;
            //to get the server current path
            String serverpath = Server.MapPath("userimages\\");
            //save the file to the server under the folder userImages;
            FileUpload1.PostedFile.SaveAs(serverpath + filename);
        }
        return filename;

    }*/
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
        insert objcat = new insert();
        DataSet ds = objcat.getAllData();
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
    /* protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
     {

     }*/
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
        string catid = GridView1.Rows[rowno].Cells[1].Text;
        //string contactno = GridView1.Rows[rowno].Cells[4].Text;
        insert objcate = new insert();
        objcate.psID= catid;
        objcate.DeleteRecord();
        //remove the edit mode
        GridView1.EditIndex = -1;

        populateGridView();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int rowno = e.RowIndex;
        TextBox txtname = (TextBox)GridView1.Rows[rowno].Cells[2].Controls[0];
        //get the categoryid
        TextBox txtid = (TextBox)GridView1.Rows[rowno].Cells[1].Controls[0];
        TextBox txtpass = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
        TextBox txtemail = (TextBox)GridView1.Rows[rowno].Cells[5].Controls[0];
        TextBox txtct = (TextBox)GridView1.Rows[rowno].Cells[4].Controls[0];
        TextBox txtoff = (TextBox)GridView1.Rows[rowno].Cells[6].Controls[0];
        TextBox txtpin = (TextBox)GridView1.Rows[rowno].Cells[7].Controls[0];
        insert objcate = new insert();
       objcate.psID = txtid.Text;
        objcate.name = txtname.Text;
        objcate.contact = txtct.Text;
        objcate.password = txtpass.Text;
        objcate.Email = txtemail.Text;
        objcate.pincode = txtpin.Text;
        objcate.officename = txtoff.Text;
        objcate.updateRecord();
        //remove the edit mode
        GridView1.EditIndex = -1;

        populateGridView();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
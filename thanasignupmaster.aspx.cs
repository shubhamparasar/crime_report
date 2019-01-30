using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thanasignupmaster : System.Web.UI.Page
{
    String connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["CrimeReportingConnectionString1"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsAddthanaAdmin objcat = new clsAddthanaAdmin();
            DataSet ds = objcat.getAllData();
            /*DropDownList1.DataSource = ds.Tables[0];


            DropDownList1.DataTextField = "Pincode";
            DropDownList1.DataValueField = "ThanaID";

            DropDownList1.DataBind();*/
           
            //DropDownList1.Items.Insert(0, new ListItem("Select", string.Empty));
           
        }
    }
    private SqlConnection MyCon()
    {
        SqlConnection con = new SqlConnection(connectionstring);
        return con;

    }
    private void MyConClose(SqlConnection con)
    {
        if (con.State == System.Data.ConnectionState.Open)
        {
            con.Close();
        }
    }
    public int InsertRecord()
    {
        string query = "insert into  thana(psID,psName,password,Contact,Email,OfficerName,Pincode) values('" + txtid.Text + "','" + txtname.Text + "','" + txtpass.Text + "','" + txtno.Text + "','" + txtemail.Text + "','" + txtofficer.Text + "','" + txtpin.Text + "')";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    /*public int InsertUpdateDelete(String query)
    {
        //calling the Connection Finction
        SqlConnection con = MyCon();
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        //executeing the command object method
        int result = com.ExecuteNonQuery();
        //closing the connection object
        MyConClose(con);
        return result;
    }
    public Boolean checkDuplicate(String query)
    {
        //calling the Connection Finction
        SqlConnection con = MyCon();
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        //executeing the command object method
        SqlDataReader dr = com.ExecuteReader();
        Boolean flag = dr.Read();
        dr.Close();
        //closing the connection object
        MyConClose(con);
        return flag;
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        InsertRecord();
        Response.Redirect("thanasigninmaster.aspx");
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        
    }
   /* protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsAddthanaAdmin objcat = new clsAddthanaAdmin();
        objcat.Pincode=DropDownList1.Text;
        DataSet ds = objcat.getCategoryByPincode();
        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "ThanaID";
        DropDownList2.DataValueField = "ThanName";

        DropDownList2.DataBind();
    }

    protected void DropDownList1_TextChanged(object sender, EventArgs e)
    {
        clsAddthanaAdmin objcat = new clsAddthanaAdmin();
        objcat.Pincode = DropDownList1.Text;
        DataSet ds = objcat.getCategoryByPincode();
        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "ThanaID";
        DropDownList2.DataValueField = "ThanName";

        DropDownList2.DataBind();
    }*/
}
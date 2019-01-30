using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    
    String connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["CrimeReportingConnectionString1"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

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
        string name = txt1stname.Text + " " + txt2ndname.Text;
        string query = "insert into  tbluser(Name,EmailId,Contact,Password,AadharId) values('" + name + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtpass.Text + "','" + txtaadhar.Text + "')";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsRegistration cf1 = new clsRegistration();
        cf1.EmailId = txtemail.Text;

        if (cf1.checkemailid() == false)
        {
            InsertRecord();
            //lblmsg.Text = "inserted successfully";
            cf1.insertsignup();

            Session.Timeout = 1;
            Response.Redirect("home.aspx");
        }
        else
        {
            lblmsg.Text = "email id already exists";

        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
}
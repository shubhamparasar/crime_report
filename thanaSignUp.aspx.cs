using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thanaSignUp : System.Web.UI.Page
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
        string query = "insert into  thana(psID,psName,password,Contact,Email,OfficerName,Pincode) values('" + txtid.Text + "','" + txtname.Text + "','" + txtpass.Text + "','" + txtno.Text + "','" + txtemail.Text + "','"+ txtofficer.Text+"','"+ txtpin.Text +"')";
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
    }
}
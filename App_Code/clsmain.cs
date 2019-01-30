﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for clsDbUtility
/// </summary>
public class clsmain
{
    //read the connection string from the web config file
    String connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["CrimeReportingConnectionString1"].ConnectionString.ToString();
	public clsmain()
	{
		//
		// TODO: Add constructor logic here
		//
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
    public int InsertUpdateDelete(String query)
    {
        //calling the Connection Finction
      SqlConnection con=  MyCon();
      con.Open();
      SqlCommand com = new SqlCommand(query, con);
        //executeing the command object method
    int result= com.ExecuteNonQuery();
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
      SqlDataReader dr=  com.ExecuteReader();
      Boolean flag = dr.Read();
      dr.Close();
        //closing the connection object
        MyConClose(con);
        return flag;
    }
    public DataSet getData(String query)
    {
        //calling the Connection Finction
        DataSet ds = null;
        SqlConnection con = MyCon();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public SqlDataReader select(String query)
    {
        SqlConnection con = MyCon();
        con.Open();

        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader dr = com.ExecuteReader();
        return dr;
    }

    
}


	

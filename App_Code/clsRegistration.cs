using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsRegistration
/// </summary>
public class clsRegistration
{
	public clsRegistration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String Name
    {
        get;
        set;
    }
  
    public String EmailId
    {
        get;
        set;
    }
    public String Password
    {
        get;
        set;
    }
    public String AadharId
    {
        get;
        set;
    }
    //method
    public Boolean checkEmailidDuplicate()
    {
        string query = "select * from tbluser where emailid='"+EmailId+"'";
        clsdbutility db1 = new clsdbutility();
        return db1.checkDuplicate(query);
       

    }
    public int InsertRecord()
    {
        string query = "insert into tbluser (Name,EmailId,Password,AadharId) values('" + Name + "','" + EmailId + "','" + Password + "','" + AadharId+ "')";
        clsdbutility db1 = new clsdbutility();
        int result=db1.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllUsers()
    {
        clsdbutility db1=new clsdbutility();
        return db1.getData("select * from tbluser");
    }
    public DataSet getUsersbyusernamepassword()
    {
        clsdbutility db1 = new clsdbutility();
        return db1.getData("select * from tbluser where EmailId='"+EmailId+"' and Password='"+Password+"'");
    }
    public Boolean checkemailid()
    {
        clsdbutility db1 = new clsdbutility();
        string query = "select * from tbluser where EmailId='" + EmailId + "'";
        return db1.checkDuplicate(query);
    }
    public int insertsignup()
    {
        clsdbutility db1 = new clsdbutility();
        string query = "insert into tbluser(Name,EmailId,Password,AadharId) values('" + Name + "','" + EmailId + "','" + Password + "','" + AadharId + "')";
        int result = db1.InsertUpdateDelete(query);
        return result;
    }
    public DataSet getAdminsbyusernamepassword()
    {
        clsdbutility db1 = new clsdbutility();
        return db1.getData("select * from tbladmin where EmailId='" + EmailId + "' and Password='" + Password + "'");
    }
}
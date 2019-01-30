using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsAddthanaAdmin
/// </summary>
public class clsAddthanaAdmin
{
	public clsAddthanaAdmin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String ThanaID
    {
        get;
        set;
    }
    public String ThanaName
    {
        get;
        set;
    }
    public String Email
    {
        get;
        set;
    }
    public String Contact
    {
        get;
        set;
    }
    public String OfficerName
    {
        get;
        set;
    }
    public String Pincode
    {
        get;
        set;
    }
    //method
    /* public Boolean checkEmailidDuplicate()
     {
         string query = "select * from missing where emailid='" + EmailID + "'";
         clsDbUtilityMissing db1 = new clsDbUtilityMissing();
         return db1.checkDuplicate(query);
      }*/
    public int InsertRecord()
    {
        string query = "insert into tblAdminThana (ThanaID,ThanaName,Email,Contact,OfficerName,Pincode) values('" + ThanaID + "','" + ThanaName + "','" + Email + "','" + Contact + "','" + OfficerName + "','" + Pincode + "')";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllData()
    {
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData("select * from tblAdminThana");
    }
    public DataSet getCategoryByPincode()
    {
        string query = "select * from tblAdminThana where Pincode='" + Pincode + "'";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData(query);
    }
    public Boolean checkPoliceDuplicate()
    {
        string query = "select * from tblAdminThana where ThanaID='" + ThanaID + "'";
        clsDbUtilityAll mn = new clsDbUtilityAll();
        return mn.checkDuplicate(query);
    }
    public int UpdateCategory()
    {
        string query = "update tblAdminThana set ThanaName='" + ThanaName + "',Email='" + Email + "',Contact='"+Contact+"',OfficerName='"+OfficerName+"',Pincode='"+Pincode+"' where ThanaID='" + ThanaID + "'";
       clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.InsertUpdateDelete(query);
    }
    public int DeleteCategory()
    {
        string query = "delete from tblAdminThana  where ThanaID='" + ThanaID + "'";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.InsertUpdateDelete(query);
    }
    public DataSet getAllCategory()
    {
        string query = "select * from tblAdminThana";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData(query);
    }
   /* public DataSet getCategoryByID()
    {
        string query = "select * from missing1 where psID='" + psID + "'";
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        return db1.getData(query);
    }
    public DataSet getCategoryByName()
    {
        string query = "select * from missing1 where MissingPersonName='" + name + "'";
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        return db1.getData(query);
    }*/
}
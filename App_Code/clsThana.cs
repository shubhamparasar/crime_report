using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsThana
/// </summary>
public class clsThana
{
	public clsThana()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String psID
    {
        get;
        set;
    }
    public String name
    {
        get;
        set;
    }
    public String password
    {
        get;
        set;
    }
    public String contact
    {
        get;
        set;
    }
    public String email
    {
        get;
        set;
    }
    public String officerName
    {
        get;
        set;
    }
    public String pincode
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
        string query = "insert into  thana(psID,psName,password,Contact,Email,OfficerName,Pincode) values('" + psID + "','" + name + "','" + password + "','" + contact + "','" + email + "','" + officerName + "','" + pincode + "')";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllData()
    {
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData("select * from thana");
    }
    public DataSet getUsersbyusernameNpassword()
    {
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData("select * from thana where Email='" + email + "' and password='" + password + "'");
    }
    /*public int UpdateCategory()
    {
        string query = "update missing1 set MissingPersonName='" + name + "' where psID='" + psID + "'";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.InsertUpdateDelete(query);
    }
    public int DeleteCategory()
    {
        string query = "delete from missing1  where psID='" + psID + "' and ContactNo='" + contact + "'";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.InsertUpdateDelete(query);
    }
    public DataSet getAllCategory()
    {
        string query = "select * from missing1";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData(query);
    }
    public DataSet getCategoryByID()
    {
        string query = "select * from missing1 where psID='" + psID + "'";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData(query);
    }
    public DataSet getCategoryByName()
    {
        string query = "select * from missing1 where MissingPersonName='" + name + "'";
        clsDbUtilityAll db1 = new clsDbUtilityAll();
        return db1.getData(query);
    }*/
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsRegistrationMissing
/// </summary>
public class clsRegistrationMissing
{
    public clsRegistrationMissing()
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
    public String description
    {
        get;
        set;
    }
    public String contact
    {
        get;
        set;
    }
    public String filePath
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
        string query = "insert into missing1 (psID,MissingPersonName,Description,contactNo,image) values('" + psID + "','" + name + "','" + description + "','" + contact + "','"+filePath+"')";
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllData()
    {
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        return db1.getData("select * from missing1");
    }
    public int UpdateCategory()
    {
        string query = "update missing1 set MissingPersonName='" + name + "',Description='" + description + "',ContactNo='" + contact + "' where psID='" + psID + "'";
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        return db1.InsertUpdateDelete(query);
    }
    public int DeleteCategory()
    {
        string query = "delete from missing1  where psID='" + psID + "' and ContactNo='" + contact + "'";
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        return db1.InsertUpdateDelete(query);
    }
    public DataSet getAllCategory()
    {
        string query = "select * from missing1";
        clsDbUtilityMissing db1 = new clsDbUtilityMissing();
        return db1.getData(query);
    }
    public DataSet getCategoryByID()
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
    }
}
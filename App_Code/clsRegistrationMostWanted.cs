using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsRegistrationMostWanted
/// </summary>
public class clsRegistrationMostWanted
{
	public clsRegistrationMostWanted()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    /*public clsRegistrationMostWanted()
    {
        //
        // TODO: Add constructor logic here
        //
    }*/
    public String thanaId
    {
        get;
        set;
    }
    public String Name
    {
        get;
        set;
    }
    public String Description
    {
        get;
        set;
    }
    public String LastSpotted
    {
        get;
        set;
    }
    public String CrimeType
    {
        get;
        set;
    }
    public int Reward
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
        string query = "insert into tblMostWanted (thanaId,Name,Description,LastSpotted,CrimeType,Reward,image) values('" + thanaId + "','" + Name + "','" + Description + "','" + LastSpotted + "','" + CrimeType + "','"+Reward+"','" + filePath+ "')";
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllData()
    {
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        return db1.getData("select * from tblMostWanted");
    }
    public int UpdateCategory()
    {
        string query = "update tblMostWanted set Name='" + Name + "',Description='"+Description+"',LastSpotted='"+LastSpotted+"',CrimeType='"+CrimeType+"',Reward='"+Reward+"' where thanaId='" + thanaId + "'";
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        return db1.InsertUpdateDelete(query);
    }
    public int DeleteCategory()
    {
        string query = "delete from tblMostWanted  where thanaId='" + thanaId + "'";
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        return db1.InsertUpdateDelete(query);
    }
    public DataSet getAllCategory()
    {
        string query = "select * from tblMostWanted";
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        return db1.getData(query);
    }
    public DataSet getCategoryByID()
    {
        string query = "select * from tblMostWanted where thanaId='" + thanaId + "'";
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        return db1.getData(query);
    }
    public DataSet getCategoryByName()
    {
        string query = "select * from tblMostWanted where Name='" + Name + "'";
        clsDbUtilityMostWanted db1 = new clsDbUtilityMostWanted();
        return db1.getData(query);
    }
}
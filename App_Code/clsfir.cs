using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsfir
/// </summary>
public class clsfir
{
	public clsfir()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string ThanaName
    {
        get;
        set;
    }
    public string ThanaId
    {
        get;
        set;
    }
    public int FIRNo
    {
       get;
        set;
    }
    public String FIRDate
    {
        get;
        set;
    }
    public String Reason
    {
        get;
        set;
    }
    public String UserId
    {
        get;
        set;
    }
    public String Status
    {
        get;
        set;
    }
    public String FIRfor
    {
        get;
        set;
    }
    public string AadharId
    {
        get;
        set;
    }
    //method
    public Boolean firnoDuplicate()
    {
        string query = "select * from tblfir1 where FIRNo='" + FIRNo + "'";
        clsdbutility db1 = new clsdbutility();
        return db1.checkDuplicate(query);


    }
    public int InsertRecord()
    {
        string query = "insert into tblfir1 (ThanaName,ThanaId,FIRDate,Reason,UserId,Status,FIRfor) values('"+ThanaName+"','"+ThanaId+"','"  + FIRDate + "','" + Reason+ "','" + UserId + "','" +Status + "','"+FIRfor+"')";
        clsdbutility db1 = new clsdbutility();
        int result = db1.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllData()
    {
        clsdbutility db1 = new clsdbutility();
        return db1.getData("select * from tblfir1");
    }


    public int UpdateCategory()
    {
        string query = "update tblfir1 set ThanaName='"+ThanaName+"',ThanaId='"+ThanaId+"',FIRDate='" +FIRDate + "',Reason='"+Reason+"',UserId='"+UserId+"',Status='"+Status+"',FIRfor='"+FIRfor+"'where FIRNo='" + FIRNo + "'";
        clsdbutility db1 = new clsdbutility();
        return db1.InsertUpdateDelete(query);
    }
    public int DeleteCategory()
    {
        string query = "delete from tblfir1  where FIRNo='" + FIRNo + "'";
        clsdbutility db1 = new clsdbutility();
        return db1.InsertUpdateDelete(query);
    }
    public DataSet SelectByFir()
    {
        string query = "select * from tblfir1 where FIRNo='" + FIRNo + "' and ThanaId='"+ThanaId+"'";
        clsdbutility db1=new clsdbutility();
        return db1.getData(query);
    }
    public DataSet selectByUser()
    {
        string query = "select * from tbluser where EmailId='" + UserId + "' and AadharId='" + AadharId + "'";
        clsdbutility db1 = new clsdbutility();
        return db1.getData(query);
    }
    public DataSet getAllWhereEmail(string s)
    {
        string query = "select * from tblfir1 where thanaId='"+s+"'";
        clsdbutility db1 = new clsdbutility();
        return db1.getData(query);
    }
}
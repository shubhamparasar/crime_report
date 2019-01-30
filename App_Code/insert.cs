using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for insert
/// </summary>
public class insert
{
    //public String psname
    //{
    //    get;
    //    set;

    //}
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
    public String contact
    {
        get;
        set;
    }
    public String password
    {
        get;
        set;
    }
    public String Email
    {
        get;
        set;
    }
    public String officename
    {
        get;
        set;
    }
    public String pincode
    {
        get;
        set;
    }
    public Boolean checkPoliceDuplicate()
    {
        string query = "select * from thana where psID='" + psID + "'";
        clsmain mn = new clsmain();
        return mn.checkDuplicate(query);
    }
    public SqlDataReader selectrecord()
    {
        string query = "select * from thana where psID='" + psID + "'";
        clsmain mn = new clsmain();
        SqlDataReader dr = mn.select(query);
        return dr;

    }   
    public int updateRecord()
    {
        string query= "update thana set psName='"+name+"',Contact='"+contact+"',Email='"+Email+"',OfficerName='"+officename+"',Pincode='"+pincode+"' where psID='"+psID +"'";
        clsmain mn = new clsmain();
         int flag=mn.InsertUpdateDelete(query);
        return flag;
    }
    public int DeleteRecord()
    {
        string q = "delete from thana where psID='" + psID + "'";
        clsmain mn = new clsmain();
        int flag = mn.InsertUpdateDelete(q);
        return flag;
    }
        public int InsertRecord()
    {
        string query = "insert into thana (psId,psName,password,Contact,Email,OfficerName,Pincode) values('"+psID+"','" + name + "','"+password+"','" + contact + "','" + Email + "','" + officename + "','" + pincode + "')";
        clsmain mn = new clsmain();
        int result = mn.InsertUpdateDelete(query);
        return result;

    }
    public DataSet getAllData()
    {
        clsmain db1 = new clsmain();
        return db1.getData("select * from thana");
    }
	
}
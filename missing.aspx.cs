using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class missing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtdes_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void btncomplain_Click(object sender, EventArgs e)
    {
        clsRegistrationMissing objreg = new clsRegistrationMissing();
        try
        {

            string filename = FileUpload();
            objreg.psID = txtid.Text;
            objreg.name = txtperson.Text;
            objreg.description = txtdes.Text;
            objreg.contact = txtcon.Text;
            objreg.filePath = filename;
            int result = objreg.InsertRecord();
            if (result == 1)
            {
                lblmsg.Text = "record is Inserted Successfully";
            }
            /*if (objreg.checkEmailidDuplicate() == false)
            {
                int result = objreg.InsertRecord();
                if (result == 1)
                {
                    lblmsg.Text = "record is Inserted Successfully";
                }
            }
            else-
            {
                lblmsg.Text = "Emailid " + txtemailid.Text + " Already exits";
            }*/
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    public String FileUpload()
    {
        //get the filename from the path
        String filename = "";
        //need to check the fileupload control contains any file or not
        if (FileUpload1.HasFile)
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            String ext = filename.Substring(filename.IndexOf("."));
            string newfilename = DateTime.Now.Ticks + ext;
            filename = newfilename;
            //to get the server current path
            String serverpath = Server.MapPath("userimages\\");
            //save the file to the server under the folder userImages;
            FileUpload1.PostedFile.SaveAs(serverpath + filename);
        }
        return filename;

    }
}
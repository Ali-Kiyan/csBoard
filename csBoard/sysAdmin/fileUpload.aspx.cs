using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class sysAdmin_fileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (file_uploader.HasFile)
        {
            file_uploader.PostedFile.SaveAs(Server.MapPath("~/assets/images/") + file_uploader.FileName);

        }
        else
        {
            lbl_result.Text = "No file has been Selected. Please try again.";
        }
       


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class sysAdmin_fileUpload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csBoardDBConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_result.Text = System.Convert.ToString(file_uploader);
        con.Open();
    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (file_uploader.HasFile)
        { 
            file_uploader.PostedFile.SaveAs(Server.MapPath("~/assets/files/") + file_uploader.FileName);

            SqlCommand cmd = new SqlCommand("INSERT INTO files (filename,filePath,fileSize,fileType,user_id) values('" + file_uploader.FileName + "','" + "~/assets/files/" + file_uploader.FileName + "'," + file_uploader.PostedFile.ContentLength + ",'" + file_uploader.PostedFile.ContentType + "'," + Session["user_id"] + ")", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_result.Text = "Successfully added";

        }
        else
        {
            lbl_result.Text = "No file has been Selected. Please try again.";
          
        }
       


    }
}
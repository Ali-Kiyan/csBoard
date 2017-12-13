using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class File_fileRead : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csBoardDBConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (System.Convert.ToInt32(Session["role_id"]) == 1 || System.Convert.ToInt32(Session["role_id"]) == 2 || System.Convert.ToInt32(Session["role_id"]) == 3 ) 
        {
            lbl_result.CssClass = "alert alert-warning animated flipInX welcome";
            lbl_result.Text = "All files in the database"; 

        }
        else{
            Response.Redirect("/Login.aspx",true);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      
        if (e.CommandName == "Download")
        {
            //clearing any response
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/assets/files/") + e.CommandArgument);
            Response.End();
        }
        if(e.CommandName == "deleteFile")
        {
            //clearing any response
            Response.Clear();
            System.IO.File.Delete(Server.MapPath("~/assets/files/") + e.CommandArgument);
            SqlCommand cmd = new SqlCommand("DELETE TOP(1) FROM files WHERE filename = '" + e.CommandArgument + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("/File/fileRead.aspx");
        }
    }
}
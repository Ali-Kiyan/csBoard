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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Convert.ToInt32(Session["role_id"]) == 1 || System.Convert.ToInt32(Session["role_id"]) == 2 ) 
        {
            lbl_result.CssClass = "alert-success";
            lbl_result.Text = "All files in the database"; 

        }
        else{
            lbl_result.CssClass = "alert-danger";
            lbl_result.Text = "You don't have the right access";
            Response.Redirect("/Login.aspx",true);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csBoardDBConnectionString"].ConnectionString);
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
            SqlCommand cmd = new SqlCommand("DELETE FROM [files] WHERE filename = " + e.CommandArgument, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("/File/fileRead.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            Response.Redirect("/ProjectManager/ProjectManagerDashboard.aspx",true);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
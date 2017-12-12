using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csBoardDBConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        // read from db and then apply the customise
        con.Open();
        workspacesTableAdapters.work_SpaceTableAdapter workspaceHandle = new workspacesTableAdapters.work_SpaceTableAdapter();
        workspaces.work_SpaceDataTable workspacestable = workspaceHandle.GetData();
   
        foreach (DataRow row in workspacestable.Rows)
        {
            if (System.Convert.ToString(Session["user_id"]) == System.Convert.ToString(row["user_id"]))
            {
                if (row["Font_Size"] != DBNull.Value)
                {
                    bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.FontSize, System.Convert.ToString(row["Font_Size"]) + "px");
                 
                }
                if (row["Colour_Scheme"] != DBNull.Value)
                {
                    bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.BackgroundColor, System.Convert.ToString(row["Colour_Scheme"]));
       
                }
                if (row["Direction"] != DBNull.Value)
                {
                    bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.Direction, System.Convert.ToString(row["Direction"]));
           
                }
            }
            else
            {
                continue;
            }

        }
       
    }

    protected void dark_Click(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Colour_Scheme,user_id) VALUES ('black',"+ Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        redirect();
    }

    protected void fontS_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Font_Size,user_id) VALUES (18," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        redirect();
    }

    protected void rtl_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Direction,user_id) VALUES ('rtl'," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        redirect();
    }

    protected void ltr_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Direction,user_id) VALUES ('ltr'," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        redirect();
    }
    protected void redirect()
    {
        Response.Redirect(Request.RawUrl);
    }
   

}

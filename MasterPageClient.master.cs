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
        // read from db and then apply the customize
        con.Open();
        workspacesTableAdapters.work_SpaceTableAdapter workspaceHandle = new workspacesTableAdapters.work_SpaceTableAdapter();
        workspaces.work_SpaceDataTable workspacestable = workspaceHandle.GetData();
        foreach (DataRow row in workspacestable.Rows)
        {
            if (System.Convert.ToString(Session["user_id"]) == System.Convert.ToString(row["user_id"]))
            {
                if ((row["Font_Size"] != DBNull.Value) && (row["Colour_Scheme"] != DBNull.Value) && (row["Direction"] != DBNull.Value))
                {
                    bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.FontSize, System.Convert.ToString(row["Font_Size"]) + "px");
                    bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.BackgroundColor, System.Convert.ToString(row["Colour_Scheme"]));
                    bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.Direction, System.Convert.ToString(row["Direction"]));
                }
            }
            else
            {
                continue;
            }

        }

    }
    
    protected void Theme1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Font_Size, Colour_Scheme, Direction, user_id) VALUES ('15', '#2c1b1980', 'ltr'," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        redirect();
    }
    protected void Theme2(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Font_Size, Colour_Scheme, Direction, user_id) VALUES ('20', '#19232c80', 'ltr'," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        redirect();
    }
    protected void redirect()
    {
        Response.Redirect(Request.RawUrl);
    }


}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csBoardDBConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        // read from db and then apply the customizat
        con.Open();
       
    }

    protected void dark_Click(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Colour_Scheme,user_id) VALUES ('black',"+ Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        string bg = "black";
        bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.BackgroundColor, bg);
        bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.FontWeight, "600");
        con.Close();
    }

    protected void fontS_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Font_Size,user_id) VALUES (18," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.FontSize, "18px");
        con.Close();
    }

    protected void rtl_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Direction,user_id) VALUES ('rtl'," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        form1.Attributes.CssStyle.Add(HtmlTextWriterStyle.Direction, "rtl");
        con.Close();
    }

    protected void ltr_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO work_Space (Direction,user_id) VALUES ('ltr'," + Session["user_id"].ToString() + ")", con);
        cmd.ExecuteNonQuery();
        form1.Attributes.CssStyle.Add(HtmlTextWriterStyle.Direction, "ltr");
        con.Close();
    }

}

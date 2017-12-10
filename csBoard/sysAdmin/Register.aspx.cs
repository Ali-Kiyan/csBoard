using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class sysAdmin_Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csBoardDBConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
   
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO users (username, password, name, role_id) values ('" + txt_userName.Text + "', HASHBYTES('SHA1','" + txt_password.Text + "'),'" + txt_name.Text + "','" + RoleDropDown.SelectedItem.Text + "')", con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch(Exception err)
        {
            Lbl_result.Text = System.Convert.ToString(err);
            Lbl_result.CssClass = "alert alert-danger animated bounceInDown";
        }

        con.Close();
    }
}
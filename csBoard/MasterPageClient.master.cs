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
    }

    protected void Theme1(object sender, EventArgs e)
    {

    }
}

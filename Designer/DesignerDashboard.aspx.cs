using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_DesignerDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Convert.ToInt32(Session["role_id"]) != 3)
        {
            Response.Redirect("/Login.aspx", true);
        }
        lbl_user.Text = User.Identity.Name;
        Session["username"] = User.Identity.Name;
        Session.Timeout = 30;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectManager_ProjectManagerDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lbl_user.Text = User.Identity.Name;
        Session["username"] = User.Identity.Name;
        Session.Timeout = 30;
    }
}
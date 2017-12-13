using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class csChat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Convert.ToInt32(Session["role_id"]) != 1 && System.Convert.ToInt32(Session["role_id"]) != 2 && System.Convert.ToInt32(Session["role_id"]) != 3 && System.Convert.ToInt32(Session["role_id"]) != 4)
        {
            Response.Redirect("/Login.aspx", true);
        }

    }


}
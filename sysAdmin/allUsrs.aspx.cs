﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sysAdmin_allUsrs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Convert.ToInt32(Session["role_id"]) == 1)
        {
            lbl_result.Text = "All Users";
        }
        else
        {
            Response.Redirect("/Login.aspx", true);
        }
      
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
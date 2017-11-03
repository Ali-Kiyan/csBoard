using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    private Boolean authenticatedviaForms()
    {
        if (txt_user.Text == "ali" && txt_pass.Text == "a")
        {
            return true;
        }
        return false;
    }


    private Boolean authenticateviaDB()
    {
        usersTableAdapters.usersTableAdapter userHandle = new usersTableAdapters.usersTableAdapter();
        users.usersDataTable userstable = userHandle.GetData();
        foreach(DataRow row in userstable.Rows)
        {
            if (txt_user.Text == System.Convert.ToString(row["username"]) && txt_pass.Text == System.Convert.ToString(row["password"]))
            {
                lbl_result.Text = System.Convert.ToString(row["username"]);
                String role_id = System.Convert.ToString(row["role_id"]);
                return false;
            }
            else
            {
                lbl_result.Text = "Failed";
                return false;
            }

        }
        return false;
    }
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (authenticatedviaForms())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
        }
        if (authenticateviaDB())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
        }
    }

}
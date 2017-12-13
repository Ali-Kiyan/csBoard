using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Security.Cryptography;


public partial class Login : System.Web.UI.Page
{
    String role_id = "";
    int user_id=0;
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
        foreach (DataRow row in userstable.Rows)
        {
            if (txt_user.Text == System.Convert.ToString(row["username"]) && txt_pass.Text == System.Convert.ToString(row["password"]))
            {
                lbl_result.Text = System.Convert.ToString(row["username"]);
                role_id = System.Convert.ToString(row["role_id"]);
                user_id = System.Convert.ToInt32(row["user_id"]);
                Session["role_id"] = role_id;
                Session["user_id"] = user_id;
                return true;
            }
            else
            {
                continue;
            }

        }
        return false;
    }
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lbl_result.Text = "Please log in to have access to this page";
        }

        if (authenticatedviaForms())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
        }
        if (authenticateviaDB())
        {
            if (role_id == "1")
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
                Response.Redirect("/sysAdmin/adminDashboard.aspx"); 
            }
            if (role_id == "2")
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
                Response.Redirect("/ProjectManager/ProjectManagerDashboard.aspx");
            }
            if (role_id == "3")
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
                Response.Redirect("/Designer/DesignerDashboard.aspx");
            }
            if (role_id == "4")
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
                Response.Redirect("/Client/ClientDashboard.aspx");
            }
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);

        }
        else
        {
            lbl_result.Text = "Username/Password does not exists in database";
        }
    }

}
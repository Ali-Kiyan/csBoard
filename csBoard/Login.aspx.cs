using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (authenticatedviaForms())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txt_user.Text, false);
        }
    }
}
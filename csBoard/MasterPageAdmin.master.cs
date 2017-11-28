using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void dark_Click(object sender, EventArgs e)
    {
        string bg = "black";
        bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.BackgroundColor, bg);
        bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.FontWeight, "600");
    }

    protected void fontS_Click(object sender, EventArgs e)
    {
        bodyMain.Attributes.CssStyle.Add(HtmlTextWriterStyle.FontSize, "18px");
    }

    protected void rtl_Click(object sender, EventArgs e)
    {
        form1.Attributes.CssStyle.Add(HtmlTextWriterStyle.Direction, "rtl");
    }

    protected void ltr_Click(object sender, EventArgs e)
    {
        form1.Attributes.CssStyle.Add(HtmlTextWriterStyle.Direction, "ltr");
    }
}

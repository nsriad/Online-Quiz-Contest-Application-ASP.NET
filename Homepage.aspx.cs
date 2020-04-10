using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username"] != null)
            {
                welcome.Text = Session["Username"].ToString();
            }
            else
            {
                Session["Username"] = "";
                welcome.Text = Session["Username"].ToString();
            }
        }
    }
    protected void logoutbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
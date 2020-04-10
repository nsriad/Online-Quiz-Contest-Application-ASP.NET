using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["Username"] != null && Request.Cookies["Usertype"] != null && Request.Cookies["Password"]!=null)
            {
                userbox.Text = Request.Cookies["Username"].Value;
                userdropdown.SelectedItem.Text = Request.Cookies["Usertype"].Value;
                passwordbox.Text = Request.Cookies["Password"].Value;
            }
        }
    }
    protected void loginbutton_Click(object sender, EventArgs e)
    {
        string username = userbox.Text;
        //string mail = email.Text;
        string pass = passwordbox.Text;

        //using session and cookie

        Session["Username"] = username ;

        if (rememberme.Checked)
        {
            Response.Cookies["Username"].Value = userbox.Text;
            Response.Cookies["Usertype"].Value = userdropdown.SelectedItem.Text;
            Response.Cookies["Password"].Value = passwordbox.Text;

            Response.Cookies["Username"].Expires = DateTime.Now.AddMilliseconds(60000);
            Response.Cookies["Usertype"].Expires = DateTime.Now.AddMilliseconds(60000);
            Response.Cookies["Password"].Expires = DateTime.Now.AddMilliseconds(60000);
        }
        else
        {
            Response.Cookies["Username"].Expires = DateTime.Now.AddMilliseconds(-1);
            Response.Cookies["Usertype"].Expires = DateTime.Now.AddMilliseconds(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddMilliseconds(-1);
        }

        //login verification using dropdown and pass and show dropdown text

        if (pass == "admin" && userdropdown.SelectedItem.Text=="Admin")
        {
            Response.Redirect("Homepage_admin.aspx");
        }
        else if (pass == "teacher" && userdropdown.SelectedItem.Text == "Teacher")
        {
            Response.Redirect("Homepage_teacher.aspx");
        }
        else if (pass == "student" && userdropdown.SelectedItem.Text == "Student")
        {
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }
}
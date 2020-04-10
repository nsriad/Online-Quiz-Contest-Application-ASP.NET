using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            //display();
        }
    }
    protected void register_Click(object sender, EventArgs e)
    {
        if (passbox.Text == repassbox.Text && fullnamebox.Text != null && emailbox.Text != null && userdropdown.SelectedValue != "0")
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "Drop table User";
            cmd.CommandText = "insert into [dbo].[User] values ('" + fullnamebox.Text + "','" + emailbox.Text + "','" + deptbox.Text + "','" + passbox.Text + "','" + userdropdown.SelectedItem.Text + "')";

            cmd.ExecuteNonQuery();


            reglabel.Text = "Successfully done! Please wait for the confirmation.";
            reglabel.Visible = true;
            //display();

            fullnamebox.Text = "";
            emailbox.Text = "";
            deptbox.Text = "";
            passbox.Text = "";
            repassbox.Text = "";
            userdropdown.SelectedValue = "0";

            Response.Redirect("login.aspx");
        }
        else
        {
            if (repassbox.Text != passbox.Text)
            {
                reglabel.Text = "Didn't match password!Try Again";
                reglabel.Visible = true;
            }
            else
            {
                reglabel.Text = "Required field should not be empty!Try Again";
                reglabel.Visible = true;
            }
            
        }

        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class problemset : System.Web.UI.Page
{
    SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            //display();
        }
        display();
    }
    public void display()
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [dbo].[User]";
        if (connect.State == ConnectionState.Open)
        {
            connect.Close();
        }
        connect.Open();
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        GridView1.Caption = "<h2>User Info</h2>";

    }
    protected void I_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void D_Click(object sender, EventArgs e)
    {
        notice.Text = "*Required Only User Id"; ;
        notice.Visible = true;
        removeconfirm.Visible = true;
    }
    protected void U_Click(object sender, EventArgs e)
    {
        notice.Text = "*Fill Up All Fields";
        notice.Visible = true;
        updateconfirm.Visible = true;
    }
    protected void V_Click(object sender, EventArgs e)
    {
        Response.Write("v clicked...\n");
        display();
    }
    protected void logoutbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void admins_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [dbo].[User] where User_type='Admin'";
        if (connect.State == ConnectionState.Open)
        {
            connect.Close();
        }
        connect.Open();
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void teachers_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [dbo].[User] where User_type='Teacher'";
        if (connect.State == ConnectionState.Open)
        {
            connect.Close();
        }
        connect.Open();
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void students_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [dbo].[User] where User_type='Student'";
        if (connect.State == ConnectionState.Open)
        {
            connect.Close();
        }
        connect.Open();
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void update_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (userid.Text != null && fullnamebox.Text != null && emailbox.Text != null && deptbox.Text != null)
        {
            cmd.CommandText = "update [dbo].[User] set Full_Name = '" + fullnamebox.Text + "', Email = '" + emailbox.Text + "', Department = '" + deptbox.Text + "' where user_Id =" + Convert.ToInt32(userid.Text) + " ";
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            cmd.ExecuteNonQuery();
        }
        else
        {
            notice.Text = "*Required field missing!"; ;
            notice.Visible = true;
        }


        fullnamebox.Text = "";
        emailbox.Text = "";
        deptbox.Text = "";
        userid.Text = "";

        display();
        updateconfirm.Visible = false;
        notice.Text = "";
    }
    protected void remove_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (userid.Text != null && fullnamebox.Text != null && emailbox.Text != null && deptbox.Text != null)
        {
            cmd.CommandText = "delete from [dbo].[User] where user_Id =" + Convert.ToInt32(userid.Text) + " ";
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            cmd.ExecuteNonQuery();
        }
        else
        {
            notice.Text = "*Required field missing!"; ;
            notice.Visible = true;
        }


        fullnamebox.Text = "";
        emailbox.Text = "";
        deptbox.Text = "";
        userid.Text = "";

        display();
        notice.Text = "";
        removeconfirm.Visible = false;
    }
}
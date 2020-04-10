using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Coursesettings : System.Web.UI.Page
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
            display();
        }
        //display();
    }
    public void display()
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [dbo].[Course]";
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
        GridView1.Caption = "<h2>Course Info</h2>";

    }
    protected void I_Click(object sender, EventArgs e)
    {
        notice.Text = "*Fill Up All Fields";
        notice.Visible = true;
        addconfirm.Visible = true;
    }
    protected void D_Click(object sender, EventArgs e)
    {
        notice.Text = "*Required Only Course Id"; ;
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
        display();
    }
    protected void logoutbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    
    protected void update_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (courseid.Text != null && coursenamebox.Text != null && creditbox.Text != null && teacherid.Text != null)
        {
            cmd.CommandText = "update [dbo].[Course] set Course_Id = '" + courseid.Text + "', Course_name = '" + coursenamebox.Text + "', Course_credit = '" + creditbox.Text + "', Teacher_id = '" + teacherid.Text + "' where Course_Id ='" +courseid.Text+"' ";
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            cmd.ExecuteNonQuery();
        }
        else
        {
            notice.Text = "*Required field missing!";
            notice.Visible = true;
        }


        coursenamebox.Text = "";
        creditbox.Text = "";
        courseid.Text = "";
        teacherid.Text = "";

        display();
        updateconfirm.Visible = false;
        notice.Text = "";
    }
    protected void remove_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (courseid.Text != null && coursenamebox.Text != null && creditbox.Text != null && teacherid.Text != null)
        {
            cmd.CommandText = "delete from [dbo].[Course] where Course_Id ='" + courseid.Text + "' ";
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


        coursenamebox.Text = "";
        creditbox.Text = "";
        courseid.Text = "";
        teacherid.Text = "";

        display();
        notice.Text = "";
        removeconfirm.Visible = false;
    }

    protected void add_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (courseid.Text != null && coursenamebox.Text != null && creditbox.Text != null && teacherid.Text != null)
        {
            cmd.CommandText = "insert into [dbo].[Course] values ('" + courseid.Text + "','" + coursenamebox.Text + "','" + creditbox.Text + "','')";
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


        coursenamebox.Text = "";
        creditbox.Text = "";
        courseid.Text = "";
        teacherid.Text = "";

        display();
        notice.Text = "";
        addconfirm.Visible = false;
    }
}
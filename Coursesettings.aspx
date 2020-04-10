<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Coursesettings.aspx.cs" Inherits="Coursesettings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="userstyle.css" type="text/css">
    <link rel="stylesheet" href="usersettings.css" type="text/css">

    <title>Courses Settings</title>
</head>

<body style="background-color:#bdc7bf ;">
    <form id="form1" runat="server">

    <!--navbar start-->
    <div class="sticky">
        <div class="navbar">

            <asp:HyperLink ID="home" runat="server" NavigateUrl="~/Homepage_admin.aspx">
                <i class="fa fa-home fa-lg fa-fw"></i>Home
            </asp:HyperLink>

            <div class="dropdown">
                <button class="dropbtn">
                    <i class="fa fa-spin fa-cog fa-lg fa-fw"></i>View/Modify
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <asp:HyperLink ID="alluser" runat="server" NavigateUrl="~/all_users_settings.aspx">All Users</asp:HyperLink>
                    <asp:HyperLink ID="courses" runat="server" NavigateUrl="~/Coursesettings.aspx">Courses</asp:HyperLink>
                    <asp:HyperLink ID="questionbank" runat="server">Question Bank</asp:HyperLink>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">
                    <i class="fa fa-trophy fa-lg fa-fw"></i>Contest
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <asp:HyperLink ID="setup" runat="server">Setup Contest</asp:HyperLink>
                    <asp:HyperLink ID="viewmodify" runat="server">View/Modify Contest</asp:HyperLink>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">
                    <i class="fa fa-envelope-o fa-lg fa-fw"></i>Inbox
                </button>
            </div>

            <a href="#"><i class="fa fa-bell fa-lg fa-fw"></i>Notification</a>

            <div class="dropdown" style="float:right ;min-width:180px ;">
                <button class="dropbtn" style="min-width:180px ;">
                    <i class="fa fa-user fa-lg fa-fw"></i>Profile
                </button>
                <div class="dropdown-content">
                    <a href="#">View</a>
                    <a href="#">Settings</a>
                    <asp:LinkButton ID="logout" OnClick="logoutbutton_Click" runat="server">Logout</asp:LinkButton>
                </div>
            </div>

        </div>
    </div>

        <!-- navigation bar finish -->

    <div class="page">
        <div class="left-sidebaruser1">
            <div class="left-sidebar1">
		       <div style="margin-left:20% ; margin-top:30% ;">
                <asp:Button CssClass="button2 button" ID="I" runat="server" Text="Add Course" OnClick="I_Click" Width="180px" /><br />
                <asp:Button CssClass="button2 button" ID="D" runat="server" Text="Remove Course" OnClick="D_Click" Width="180px" /><br />
                <asp:Button CssClass="button2 button" ID="U" runat="server" Text="Update Course" OnClick="U_Click" Width="180px" /><br />
                <asp:Button CssClass="button2 button" ID="V" runat="server" Text="View All" OnClick="V_Click" Width="180px" /><br />
                   <br />
               </div>
			</div>
        </div>
		<div class="content-area1">
		    <asp:GridView ID="GridView1"  style="margin-top:15px ; margin-bottom:15px ;" runat="server" BackColor="#00CC99" BorderColor="Black" BorderStyle="Double" GridLines="Both" ForeColor="Black" AllowSorting="True" BorderWidth="5px" Caption="Users info" CellPadding="10" CellSpacing="20" HorizontalAlign="Center" Width="20px">
            </asp:GridView>
		</div>
		<div class="right-sidebar1">
		    <div style="margin-left:10% ; margin-top:30% ;">

                <h2 style="font-family:Georgia;">
                    <asp:Label ID="notice" runat="server"></asp:Label>
                </h2>
                   
                <div class="textbox">
                    <i class="fa fa-address-card" aria-hidden="true"></i>
                    <asp:TextBox ID="courseid" placeholder="Enter Course Id" runat="server" Visible="true"></asp:TextBox>
                </div>
                    
                <div class="textbox">
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    <asp:TextBox ID="coursenamebox" placeholder="Enter Course Name" runat="server" Visible="true"></asp:TextBox>
                </div>
                    
                <div class="textbox">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <asp:TextBox ID="creditbox" placeholder="Enter Credit Hour" runat="server" Visible="true"></asp:TextBox>
                </div>
                    
                <div class="textbox">
                    <i class="fa fa-university" aria-hidden="true"></i>
                    <asp:TextBox ID="teacherid" placeholder="Enter Teacher Id" runat="server" Visible="true"></asp:TextBox>
                </div>
                
                <div style="margin-left:15% ;">
                    <asp:Button CssClass="button2 button" ID="updateconfirm" runat="server" Text="Update Now" OnClick="update_Click" Width="180px" Visible="False" /><br /> 
                    <asp:Button CssClass="button2 button" ID="removeconfirm" runat="server" Text="Remove Now" OnClick="remove_Click" Width="180px" Visible="False" /><br />
                    <asp:Button CssClass="button2 button" ID="addconfirm" runat="server" Text="Add Now" OnClick="add_Click" Width="180px" Visible="False" /><br />
                </div>
 
		    </div>
		</div>
    </div>
    <footer style="text-align:center ;"><br />@All rights reserved by-Nazmus Shakib Riad</footer>
    </form>
</body>
</html>


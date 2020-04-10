<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage_admin.aspx.cs" Inherits="Homepage_admin" %>

<html>
<head id="Head2" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css" type="text/css">

    <title>Welcome to Admin Panel</title>

</head>
<body>

    <div>
        <img src="cover.png" style="width:100% ;" />
    </div>
    <form id="form2" runat="server">
    <!-- navigation bar-->

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

    <div class="page">
			<div class="left-sidebar">
		       
			</div>
			<div class="content-area">
		       <h1>
                   <marquee behavior="alternate" loop="500" direction="scroll" scrolldelay="1">
                       Welcome <asp:Label ID="welcome" runat="server" Text="User"></asp:Label> !
                   </marquee>
		       </h1>
			</div>
			<div class="right-sidebar">
		       
			</div>
			<div class="footer">
		       
			</div>
    </div>

    <footer style="text-align:center ;" ><br />@All rights reserved by-Nazmus Shakib Riad</footer>
    </form>

</body>
</html>


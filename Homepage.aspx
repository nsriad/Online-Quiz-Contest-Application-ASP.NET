<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<html>
<head id="Head1" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css" type="text/css">

    <title>Welcome to Online Quiz Contest</title>

</head>
<body>
    <div>
        <img src="cover.png" style="width:100% ;" />
    </div>

    <form id="form1" runat="server">
    <!-- navigation bar-->

    <div class="navbar">

        <a href="#"><i class="fa fa-home fa-lg fa-fw"></i>Home</a>

        <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-quora fa-lg fa-fw"></i>Quiz
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="#">Data Structure</a>
                <a href="#">Web Programming</a>
                <a href="#">C programming</a>
                <a href="#">Database System</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-book fa-lg fa-fw"></i>Practice
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="#">Data Structure</a>
                <a href="#">Web Programming</a>
                <a href="#">C programming</a>
                <a href="#">Database System</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Contest</button>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-line-chart fa-lg fa-fw"></i>Leader Board
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="#">All time</a>
                <a href="#">Last Contest</a>
                <a href="#">Topic-wise</a>
            </div>
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

    </div>

    <footer style="text-align:center ;" ><br />@All rights reserved by-Nazmus Shakib Riad</footer>
    </form>

</body>
</html>


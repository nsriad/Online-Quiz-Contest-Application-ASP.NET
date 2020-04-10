<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage_teacher.aspx.cs" Inherits="Homepage_teacher" %>

<!DOCTYPE html>

<html>
<head id="Head3" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css" type="text/css">

    <title>Welcome to Teacher Panel</title>

</head>
<body>
    <div>
        <img src="cover.png" style="width:100% ;" />
    </div>

    <form id="form3" runat="server">
    <!-- navigation bar-->

    <div class="navbar">

        <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Homepage_teacher.aspx"><i class="fa fa-home fa-lg fa-fw"></i>Home</asp:HyperLink>

        <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-quora fa-lg fa-fw"></i>Problem Settings 
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <asp:HyperLink ID="setproblems" runat="server">Set Problems</asp:HyperLink>
                <asp:HyperLink ID="modifyproblems" runat="server">Modify Problems</asp:HyperLink>
                <asp:HyperLink ID="deleteproblems" runat="server">Delete Problems</asp:HyperLink>
                <asp:HyperLink ID="viewproblems" runat="server">View Problems</asp:HyperLink>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn" style="min-width:150px ;">
                <i class="fa fa-eye fa-lg fa-fw"></i>View
                
            </button>
            <div class="dropdown-content">
                <asp:HyperLink ID="HyperLink1" runat="server">Teachers Info</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server">Student Info</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server">Contest Info</asp:HyperLink>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn" style="min-width:150px ;"><i class="fa fa-envelope-o fa-lg fa-fw"></i>Inbox</button>
        </div>

        <div style="min-width:180px ;">
            <asp:HyperLink ID="contact" runat="server"><i class="fa fa-phone fa-lg fa-fw"></i>Contact</asp:HyperLink>
        </div>

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

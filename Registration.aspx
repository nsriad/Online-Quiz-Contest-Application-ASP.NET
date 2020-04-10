<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <title>Registration...</title>
    <link rel="stylesheet" href="reg.css" type="text/css">  
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h1>Registration Form</h1>

            <div class="custom">
                <span style="width:auto ;float:left ;"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                
                <span class="sel" style="height:inherit;float:left; top: 0px; left: 15px;">
                    <asp:DropDownList CssClass ="drop" ID="userdropdown" runat="server" Height="27px" Font-Names="Georgia" ForeColor="White">
                        <asp:ListItem Value="0">--User Type--</asp:ListItem>
                        <asp:ListItem Value="1">Admin</asp:ListItem>
                        <asp:ListItem Value="2">Teacher</asp:ListItem>
                        <asp:ListItem Value="3">Student</asp:ListItem>
                    </asp:DropDownList>
                </span>
                
            </div>
            
            
            <div class="textbox">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <asp:TextBox ID="fullnamebox" placeholder="Enter Full Name (Required)" runat="server"></asp:TextBox>
            </div>

            <div class="textbox">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <asp:TextBox ID="emailbox" placeholder="Enter Your Email Address (Required)" runat="server"></asp:TextBox>
            </div>

            <div class="textbox">
                <i class="fa fa-university" aria-hidden="true"></i>
                <asp:TextBox ID="deptbox" placeholder="Enter Your Department" runat="server"></asp:TextBox>
            </div>
            
            <div class="textbox">
                <i class="fa fa-key" aria-hidden="true"></i>
                <asp:TextBox ID="passbox" TextMode="Password" placeholder="Enter Your Password" runat="server"></asp:TextBox>
            </div>

            <div class="textbox">
                <i class="fa fa-check-circle" aria-hidden="true"></i>
                <asp:TextBox ID="repassbox" TextMode="Password" placeholder="Re-enter Your Password" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="regbutton" class="btn" OnClick="register_Click" runat="server" Text="Register Now" BorderColor="White" ForeColor="White" />

        </div>
        <div class="message-box">
            <asp:Label ID="reglabel" runat="server" Text="Successfully done! Please wait for the confirmation." ForeColor="Yellow" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
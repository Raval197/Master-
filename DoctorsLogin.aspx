<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorsLogin.aspx.cs" Inherits="reg_DoctorLogin" %>


<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Login - Royal Hospital PVT</title>
    <link href="../style/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="css/font.css" rel="stylesheet"/>
	
	<link href="../style/css/custom.css" rel="stylesheet"/>
	<link href="style/css/slide.css" rel="stylesheet"/>
	<link rel="icon" type="image/ico" href="img/other/logo.png" />
	
	<script src="style/js/jquery1.js"></script>
	<script src="style/js/popper.js"></script>
	<script src="style/js/boot.js"></script>
    <script src="style/js/jquery-1.11.3.min.js"></script>
    <script src="../style/js/bootstrap.min.js"></script>
	<script src="style/js/ie10-viewport-bug-workaround.js"></script>
	<script src="style/js/holder.min.js"></script>
	<script src="style/js/topbutton.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 432px;
        }
        .auto-style2 {
            width: 591px;
        }
        .form-control{
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:navbarIndex runat="server" ID="navbarIndex" />
        <br />
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
        <article class="card-body mx-auto" style="max-width: 400px;">
	        <h4 class="card-title mt-3 text-center">Doctor Login Account</h4>
	        
	        <p class="divider-text">
                <span class="bg-light">Royal Hospital</span>
            </p>
	        
	        
		      

            <span style="float:left;"><asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/Email Black.png" Width="21px" /></span><p>Doctor ID:  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="* Doctor  ID is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <asp:TextBox ID="txtUserID" runat="server"  CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>

                <br />

            <span style="float:left;"><asp:Image ID="Image5" runat="server" ImageUrl="~/image/icon/Lock  Black.png" Width="21px" /></span><p>Password:   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
           
                <br />
                <br />

            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="form-control" OnClick="btnlogin_Click" />

                <br />
                                                                          
        
        </article>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    
    <div>
      <div class="container">

        <div class="card bg-light" style="border:1px solid black; text-align:center">
        </div> <!-- card.// -->

        </div> 
        <!--container end.//-->
    </div>

    <div>
        <uc1:footerIndex runat="server" ID="footerIndex" />
    </div>
   </form>
</body>
</html>

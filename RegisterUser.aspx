<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterUser.aspx.cs"  Inherits="reg_RegisterUser" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Sign In - Royal Hospital PVT</title>
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
			width: 100%;
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
			<h4 class="card-title mt-3 text-center">Create Account</h4>
			
			<p class="divider-text">
				<span class="bg-light">Royal Hospital</span>
			</p>
            <div>
			<span style="float:left;"><asp:Image ID="Image3" runat="server" ImageUrl="~/image/icon/User Black.png" Width="21px" /></span><p>User Name: 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="* User Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
			<asp:TextBox AutoCompleteType="Disabled" ID="txtUserName" runat="server"  CssClass="form-control" Width="100%" ></asp:TextBox>
				 
				<br />

			<span style="float:left;"><asp:Image ID="Image1" runat="server" ImageUrl="~/image/icon/Google Mobile Black.png" Width="21px" /></span><p>Mobile Number:   (+94 71 7302199)
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="* Mobile Number is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
			<asp:TextBox AutoCompleteType="Disabled" ID="txtMobile" runat="server"  CssClass="form-control" >+94</asp:TextBox>
			 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="  * Mobile Number is Invalied" ForeColor="#66FF33" ValidationExpression="@&quot;^7|0|(?:\+94)[0-9]{9,10}$"></asp:RegularExpressionValidator>
			 
				<br />

			<span style="float:left;"><asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/Email Black.png" Width="21px" /></span><p>Email: <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblalreademsg" runat="server" Font-Size="12px" ForeColor="#FF3300"></asp:Label>
            </p>
			<asp:TextBox AutoCompleteType="Disabled" ID="txtEmail" runat="server"  CssClass="form-control" AutoPostBack="True"  ></asp:TextBox>
			 
                <asp:RegularExpressionValidator ID="RegularEzxpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="  * Email is Invalied" ForeColor="#66FF33" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			 
				<br />

			<span style="float:left;"><asp:Image ID="Image4" runat="server" ImageUrl="~/image/icon/Home Black.png" Width="21px" /></span><p>Home Town: <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtHometown" ErrorMessage="* Home Town is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
			<asp:TextBox AutoCompleteType="Disabled" ID="txtHometown" runat="server"  CssClass="form-control"></asp:TextBox>
			 
				<br />

			<span style="float:left;"><asp:Image ID="Image5" runat="server" ImageUrl="~/image/icon/Lock  Black.png" Width="21px" /></span><p>Password: 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
			<asp:TextBox AutoCompleteType="Disabled" ID="txtPassword" TextMode="Password" runat="server"  CssClass="form-control"></asp:TextBox>
		   
                <br />

                <span style="float:left;"><asp:Image ID="Image6" runat="server" ImageUrl="~/image/icon/Lock  Black.png" Width="21px" /></span><p>Re-Enter Password: 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Re-Enter Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
                <asp:TextBox AutoCompleteType="Disabled" ID="txtRepass" TextMode="Password" runat="server"  CssClass="form-control"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not matching" ControlToCompare="txtRepass" ControlToValidate="txtPassword" ForeColor="Red"></asp:CompareValidator>
                <br />

			<asp:Button ID="btnsingin" runat="server" Text="Register" CssClass="form-control" OnClick="btnsingin_Click" />

				<br />
		   </div>
			<p class="text-center">Have an account? <a href="LoginUser.aspx">login In</a> </p>                                                                 
		
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

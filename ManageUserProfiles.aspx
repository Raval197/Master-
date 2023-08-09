<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUserProfiles.aspx.cs" Inherits="user_ManageUserProfiles" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
  
     <link href="style/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../admin/style/btn.css" rel="stylesheet"/>

    <link href="style/profileimage.css" rel="stylesheet"/>
	
	<script src="../admin/style/bootstrap.bundle.min.js"></script>
    <script src="../admin/style/Chart.min.js"></script>
    <script src="../admin/style/font.js"></script>
    <script src="../admin/style/jquery-3.4.1.min.js"></script>
    <script src="../admin/style/scripts.js"></script>
<style>
        .btn{
            margin-top:50px;
            margin-bottom: 20px;
        }

        .form-control{
           float:left;
           position:absolute;
        }
        .auto-style1 {
            width: 100%;
            border: 1px solid #0062CC;
        }
        .auto-style3 {
            width: 300px;
            height: 3px;
        }
        .auto-style6 {
            width: 301px;
            height: 3px;
        }
        .auto-style7 {
            width: 348px;
            height: 45px;
        }
        .auto-style8 {
            width: 300px;
            height: 45px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style13 {
            width: 301px;
            height: 46px;
        }
        .auto-style14 {
            width: 300px;
            height: 46px;
        }
        .auto-style15 {
            height: 46px;
        }
        .auto-style16 {
            height: 3px;
        }
        .auto-style17 {
            width: 278px;
            height: 45px;
        }
        .auto-style18 {
            width: 278px;
            height: 46px;
        }
        .auto-style19 {
            width: 278px;
            height: 3px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div>
        
    <div id="layoutSidenav">
        <uc1:navbarIndex runat="server" ID="navbarIndex" />

        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4">&nbsp;</h1>
                      
                        

                        <h1 class="mt-4">Profile/Manage</h1>
    
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Profile Edit</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                       
                                    <asp:Panel ID="pnlUserInfo" runat="server">

                                      
                                        <asp:Image ID="imgDocPic" runat="server" />

                                        <br />

                                        
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label21" runat="server" Text="Name:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblUserName" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label15" runat="server" Text="Mobile Number:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblMobile" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label17" runat="server" Text="Home Town:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblHome" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style18"></td>
                                                <td class="auto-style14">
                                                    
                                                    <asp:Label ID="Label22" runat="server" Text="Email:"></asp:Label>
                                                    
                                                </td>
                                                <td class="auto-style15">
                                                   
                                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                                   
                                                </td>
                                                <td class="auto-style15"></td>
                                            </tr>
                                           
                                            <tr>
                                                <td class="auto-style19"></td>
                                                <td class="auto-style3"></td>
                                                <td class="auto-style16"></td>
                                                <td class="auto-style16"></td>
                                            </tr>
                                        </table>
                                        
                                    </asp:Panel>

                                    <br />

                                    <asp:Button ID="btnEdit" runat="server" Text="Edit Profile" CssClass="btn" OnClick="btnEdit_Click" />

                                    <asp:Panel ID="pnlEditUSer" runat="server">
                                        
                                        <asp:Label ID="Label5" runat="server" Text="Name:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtUserName" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                        <br />
                                     
                                        <asp:Label ID="Label1" runat="server" Text="Mobile Number:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtMobile" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="Home Town:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtHome" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                      
                                        <asp:Button ID="btnInsertEdit" runat="server" Text="Insert" CssClass="btn" OnClick="btnInsertEdit_Click"  />
                                        
                                        <asp:Button ID="btnNotEdit" runat="server" Text="Back" CssClass="btn" OnClick="btnNotEdit_Click" />
                                        <br />


                                    </asp:Panel>

                                </div>
                            </div>
                        </div>
                    </div>
                
                
            </div>
    </div>
    </div>
         <uc1:footerIndex runat="server" ID="footerIndex" />
    </form>
</body>
</html>
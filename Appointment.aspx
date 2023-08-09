<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Appointment" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>



<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment - Royal Hospital PVT</title>

    <link href="style/css/bootstrap.css" rel="stylesheet"/>
    <link href="style/css/Appointment.css.css" rel="stylesheet"/>

	
	
	<link href="style/css/slide.css" rel="stylesheet"/>
	
	
	<script src="style/js/jquery1.js"></script>
	<script src="style/js/popper.js"></script>
	<script src="style/js/boot.js"></script>
    <script src="style/js/jquery-1.11.3.min.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
	<script src="style/js/ie10-viewport-bug-workaround.js"></script>
	<script src="style/js/holder.min.js"></script>
	<script src="style/js/topbutton.js"></script>
</head>

    

<body>
    <form id="form1" runat="server">
        <uc1:navbarIndex runat="server" ID="navbarIndex" />
    <div>
    <br />
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
            <article class="card-body mx-auto" style="max-width: 400px;">
	        <h4 class="card-title mt-3 text-center">Appointment</h4>
	        
	        <p class="divider-text">
                <span >Royal Hospital</span>
            </p>
	        
                <asp:DataList ID="DataList" runat="server"  >
                    <ItemTemplate>
                        <span style="float:left;"><asp:Image ID="Image6" runat="server" ImageUrl="~/image/icon/Medical Doctor balck.png" Width="21px" />
                            <p>Doctor : </p>
                            <asp:Label ID="lblDoctor" runat="server" Text='<%# Eval("DoctorName") %>'></asp:Label>
                        </span>
                            
                        
                    </ItemTemplate>
                </asp:DataList>
	        <br/>
		        
		     <span style="float:left;"><asp:Image ID="Image3" runat="server" ImageUrl="~/image/icon/User Black.png" Width="21px" /></span><p>Patient Name :  
               
                </p>
            <asp:TextBox ID="txtPatintName" runat="server"  CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPatintName" ErrorMessage="* Patient Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />
            
            <span style="float:left;"><asp:Image ID="Image1" runat="server" ImageUrl="~/image/icon/Google Mobile Black.png" Width="21px" /></span><p>Mobile Number : 
                </p>
            <asp:TextBox ID="txtMobile" runat="server"  CssClass="form-control" AutoCompleteType="Disabled" Text="+94"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMobile" ErrorMessage="* Mobile Number is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="  * Mobile Number is Invalied" ForeColor="#66FF33" ValidationExpression="@&quot;^7|0|(?:\+94)[0-9]{9,10}$"></asp:RegularExpressionValidator>
                
			 
                <br />

            <span style="float:left;"><asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/Email Black.png" Width="21px" /></span><p>Email : 
                </p>
            <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="  * Email is Invalied" ForeColor="#66FF33" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			 
                <br />

            <span style="float:left;"><asp:Image ID="Image4" runat="server" ImageUrl="~/image/icon/Home Black.png" Width="21px" /></span><p>Address :  
               
                </p>
            <asp:TextBox ID="txtAdress" runat="server"  CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdress" ErrorMessage="* Address is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                
         
                <br />
                
                <asp:Label ID="Label2" runat="server" Text="Booking Date:"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdate" ErrorMessage="* Bookin Date is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="txtdate" runat="server"  CssClass="form-control"></asp:TextBox>
               
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="image/icon/Calendar.png" OnClick="ImageButton3_Click" />
     <br /><br />
    <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnDayRender="Calendar3_DayRender">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
     <br />

            <asp:Button ID="btnappointmt" runat="server" Text="Send Appointment" CssClass="form-control" OnClick="btnappointmt_Click" />

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
        <uc1:footerIndex runat="server" ID="footerIndex" />
    </form>
</body>
</html>

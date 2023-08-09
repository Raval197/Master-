<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Schedule - Royal Hospital PVT</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navbarIndex runat="server" ID="navbarIndex" />
    <div>
    <br />
           
        <h4 class="card-title mt-3 text-center">Appointment</h4>
	        
	        <p class="divider-text">
                <span >Royal Hospital</span>
            </p>

        <div>
            <br />
            <br />
         
            <asp:GridView ID="GVAddSchedule" runat="server"  DataKeyNames="idSchedule" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" Width="100%" Height="253px">
                                                <Columns> 
                                                   
                                                    <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" />
                                                    <asp:BoundField DataField="monday" HeaderText="monday" />
                                                    <asp:BoundField DataField="tuesday" HeaderText="tuesday" />
                                                    <asp:BoundField DataField="wedneday" HeaderText="wedneday" />
                                                    <asp:BoundField DataField="thursday" HeaderText="thursday" />
                                                    <asp:BoundField DataField="friday" HeaderText="friday" />
                                                    <asp:BoundField DataField="saturday" HeaderText="saturday" />
                                                    <asp:BoundField DataField="sunday" HeaderText="sunday" /> 
                                                    
                                                </Columns>

                                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#330099" />
                                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                            </asp:GridView>

            <br />
            <br />
            <br />
            <br />
            
        </div>
    </div>
        <uc1:footerIndex runat="server" ID="footerIndex" />
    </form>
</body>
</html>

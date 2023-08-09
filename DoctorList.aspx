<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorList.aspx.cs" Inherits="DoctorList" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor List - Royal Hospital PVT</title>
    <link href="style/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="style/css/DoctorList.css" rel="stylesheet"/>
	
	
	<link href="style/css/slide.css" rel="stylesheet"/>
	<link rel="icon" type="image/ico" href="img/other/logo.png" />
	
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
        
    <div>
        <div>
        </div>
     <header class="jumbotron my-4">
  
         <p class="divider-text">
                <span>Find Your Doctor</span>
          </p>

    </header>
    <!-- Page Features -->
    <div class="row text-center">
        <uc1:navbarIndex runat="server" ID="navbarIndex" />


        <div>
            <asp:Repeater ID="RepeaterComment" runat="server" >
                <ItemTemplate>
                    <div class="col-lg-3 col-md-6 mb-4" >
                        <div class="card h-100">
                        
                          <asp:Image ID="imgDocPic" runat="server"  ImageUrl='<%# Eval("DoctorImage") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                            <br />
                            
                          <div class="card-body">
                              <asp:Label ID="lblDocName" runat="server" CssClass="card-title" Text='<%# Eval("DoctorName") %>' Font-Size="Medium" ForeColor="Black" Font-Bold="True">></asp:Label>
                               <br />
                              <br />
                              <asp:Image ID="Image1" runat="server" ImageUrl="~/image/icon/Foil Space Blanke.png" Width="20px" />
                              <asp:Label ID="Label2" runat="server" Text="Speciality - "></asp:Label>
                              <asp:Label ID="lblSpeciality" runat="server" Text='<%# Eval("DoctorSpeciality") %>'></asp:Label>
                               <br />
                              <asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/Home Black.png" Width="20px" />
                              <asp:Label ID="Label1" runat="server" Text="Hospital - "></asp:Label>
                              <asp:Label ID="lblHospital" runat="server" Text='<%# Eval("DoctorHospital") %>'></asp:Label>
                               <br />
                              <asp:Image ID="Image3" runat="server" ImageUrl="~/image/icon/Money.png" Width="20px" />
                              <asp:Label ID="Label3" runat="server" Text="Fees - "></asp:Label>
                              <asp:Label ID="lblFees" runat="server" Text='<%# "Rs."+ Eval("DoctorFees") %>'></asp:Label>
                               <br />
                          </div>
                              <div class="card-footer">
                                
                                  
                                  <a href="Appointment.aspx?idDoctor=<%#Eval("idDoctor")%>" class="btn btn-primary"> Appointment <i class="fas fa-arrow-circle-right"></i></a>
                             
                          </div> 
                        </div>
                      </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
        <div>
            <uc1:footerIndex runat="server" ID="footerIndex" />
        </div>
        
    </form>
   
</body>
</html>

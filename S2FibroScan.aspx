<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S2FibroScan.aspx.cs" Inherits="doctor_DoctorProfile" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>



<!DOCTYPE html>

<html>
<head runat="server">
    <title>Services - Royal Hospital PVT</title>
    
    <link href="../style/css/bootstrap.min.css" rel="stylesheet"/>
   
    <link href="../style/css/Profile.css" rel="stylesheet"/>

	
	

</head>
<body>
    <form id="form1" runat="server">
        <uc1:navbarIndex runat="server" ID="navbarIndex" />
    <div>
    
 <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">

        <!-- Title -->
        <h1 class="mt-4">Fibro Scan</h1>

       
        <hr>

        <!-- Preview Image -->
   
          <asp:Image ID="Image1" runat="server" ImageUrl="~/image/Services/Cover/a2.jpg" CssClass="img-fluid" />
        <hr>

        <!-- Post Content -->
        <p>Non-invasive , pain-free procedure – comprehensive assessment of your fatty liver in less than 5 minutes. Nawaloka Hospital introduces the  1st FibroScan in Sri Lanka.</p>

        <p style="font-style:italic"> What is FibroScan ?</p>
       <p>Examination with FibroScan®, also called transient elastography, is a technique used to assess liver stiffness without invasive investigation. The result is immediate, it shows the condition of the liver and allows physicians to diagnose and monitor disease evolution in conjunction with treatment and collateral factors. Exam results help to anticipate various complications, as well as to monitor and assess the damage caused by conditions such as cirrhosis.</p>

        

        <p>Results obtained with FibroScan® will allow your physician to monitor your liver health over time with or without treatment.</p>

          <p style="font-style:italic">What difference does FibroScan make for me ?</p>

     <p>FibroScan provides immediate results, it’s easy and fast (5-10 minutes).The exam is painless and non-invasive. In case of close follow-up, the examination can be safely repeated.</p>

        <hr>

        
       


      </div>

     

       

      

      </div>

    
    <!-- /.row -->

  </div>
<!-- /.container -->

    </div>
        <uc1:footerIndex runat="server" ID="footerIndex" />
    </form>
</body>
</html>

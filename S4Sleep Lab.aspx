<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S4Sleep Lab.aspx.cs" Inherits="doctor_DoctorProfile" %>

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
        <h1 class="mt-4">Sleep Lab</h1>

       
        <hr>

        <!-- Preview Image -->
   
          <asp:Image ID="Image1" runat="server" ImageUrl="~/image/Services/Cover/a4.jpg" CssClass="img-fluid" />
        <hr>

        <!-- Post Content -->
        
        <p style="font-style:italic">What is SNORING?</p>

            
                <p>Snoring is noisy breathing through the mouth and nose during sleep. It occurs when the muscles in the upper air passages vibrate.</p>
          
          <p style="font-style:italic">What is OBSTRUCTIVE SLEEP APNOEA (OSA) ?</p>

            
<p>OSA occurs when the breathing passage in the nose and mouth is blocked during sleep. As a result air flow in and out of the lung stops, although EFFORT TO BREATHE continues.These interruptions usually lasts more then 10 second and can occur between 10 to 50 times per hour. When this happens the Oxygen (02) levels in the body can drop to dangerous levels and the Carbon Dioxide (CO2) level increase. As the brain detects this it will wake you up to reopen the airways and restart your breathing.</p>
       
           <p style="font-style:italic">Is it a RISK to your health?</p>
       
          <p>yes.There is an increased risk of developing high blood pressure, Diabetes and heart disease. Also, many patients with OSA are prone to traffic accidents and work related accidents. Specially those who work with machines.</p>
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

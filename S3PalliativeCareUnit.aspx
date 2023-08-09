<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S3PalliativeCareUnit.aspx.cs" Inherits="doctor_DoctorProfile" %>

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
        <h1 class="mt-4">Palliative Care Unit</h1>

       
        <hr>

        <!-- Preview Image -->
   
          <asp:Image ID="Image1" runat="server" ImageUrl="~/image/Services/Cover/a3.jpg" CssClass="img-fluid" />
        <hr>

        <!-- Post Content -->
        
        <p style="font-style:italic">What is Palliative Care?</p>

          <ul>
            <li>
                <p>The care of patients with terminal illness where relief of symptoms is the priority.(e.g. Cancer,  Kidney Failure, Heart Failure,Motor Neurone Failure,Liver Failure)</p>
            </li>
            <li>
                <p>Palliative care involves a team of doctors nurses and other healthcare professionals who will work together to look after the patient.</p>
            </li>
            <li>
                <p>Palliative care involves physical,psychological, psychosocial and spiritual care.</p>
            </li>
        </ul>
       
           <p style="font-style:italic">Which patients would benefit from Palliative Care?</p>
        <ul>
            <li>
                <p>Patients with terminal illnesses such as advanced cancers and organ failure usually where a cure is not possible</p>
            </li>
            <li>
                <p>Patients with severe pain</p>
            </li>
            <li>
                <p> Patients at the end stage of their lives</p>
            </li>
        </ul>
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

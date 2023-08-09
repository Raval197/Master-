<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S1Angiography.aspx.cs" Inherits="doctor_DoctorProfile" %>

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
        <h1 class="mt-4">Angiography</h1>

       
        <hr>

        <!-- Preview Image -->
   
          <asp:Image ID="Image1" runat="server" ImageUrl="~/image/Services/Cover/a1.jpg" CssClass="img-fluid" />
        <hr>

        <!-- Post Content -->
        <p>X-ray examination of arteries and veins with a contrast medium to differentiate them from surrounding organs. The contrast medium is introduced through a catheter to show the blood vessels and the structures they supply inc. of organs. This application is used to detect the blocks of the coronary artery of the heart.</p>

        <p>The patient will be admitted to a normal room (or any other according to availability) and the room will have to be vacated when the patient is taken in for procedure. The patient will be re-allocated a room only after discharge from the intensive care unit, if necessary. Extra meals, cafe items and telephone calls are not included and will be charged separately.</p>

        

        <p>If the patient is treated for any ailment not related to the procedure, such costs will have to be borne by the patient.

            Professional charges other than for package will have to be borne by the patient.</p>

        <p>If the patient is referred for cardiac surgery, the total hospital charges and professional charges incurred from the time of referral to the time of the commencement of the cardiac surgery package will have to be borne by the patient. Thereafter the charges will be on the appropriate package. Angiography is done by the consultant cardiologist.</p>

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

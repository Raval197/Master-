<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Home - Royal Hospital PVT</title>

	<link href="style/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="css/font.css" rel="stylesheet"/>
	
	<link href="style/css/custom.css" rel="stylesheet"/>
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

		<!-- NavBar -->

	<div>
		<uc1:navbarIndex runat="server" id="navbarIndex" />
	</div>

		<!-- NavBar -->

		<div class="index-slide">
	
	<div id="demo" class="carousel slide" data-ride="carousel">
		
	<div class="carousel-inner">
	
	<div class="carousel-item active">
			<img src="image/covers/1.jpg" alt="Los Angeles" width="1100" height="500"/>
				<div class="carousel-caption">
					<h3 class="slide-txt">Our Objectives</h3>
					<p>"To support and undertake research related to Behavior change of the community and social mobilization."</p>
				</div>   
	</div>
		
	<div class="carousel-item">
	   <img src="image/covers/2.jpg" alt="Los Angeles" width="1100" height="500"/>
			<div class="carousel-caption">
				<h3 class="slide-txt">Our Mission</h3>
				<p>"To contribute to social and economic development of Sri Lanka by achieving the highest attainable health status through promotive, preventive, curative and rehabilitative services of high quality made available and accessible to people of Sri Lanka. Objectives are;"</p>
			</div>   
	</div>
	
	<div class="carousel-item">
	   <img src="image/covers/3.jpg" alt="Los Angeles" width="1100" height="500"/>
	  <div class="carousel-caption">
	  <h3 class="slide-txt">Our Vision</h3>
					<p>"A healthier nation that contributes to its economic, social, mental and spiritual development."</p>
	  </div>   
	</div>
	
	 <div class="carousel-item">
	   <img src="image/covers/4.jpg" alt="Los Angeles" width="1100" height="500"/>
	  <div class="carousel-caption">
	  <h3 class="slide-txt">Our Mission</h3>
				<p>"To empower community for maintaining, promoting their health"</p>
	  </div>   
	</div>

  </div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
	</div>
	
	</div>

			<!-- Body -->
		<div>
	<div class="container-fluid">
		<br/>
		<!-- Left Column -->
		<div class="col-sm-3" >

			<!-- Department Select Panel -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<asp:Image ID="Image1" runat="server" ImageUrl="~/image/icon/Stethoscop.png" Width="25px" />
						 Doctor List
					</h3>
				</div>
				<div class="panel-body">

						<a href="DoctorList.aspx" class="btn" style="width: 80%;">Select Doctor</a>
				   
			 
				</div>
			</div>

			<!-- New Update Panel -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/News.png" Width="25px" /> News</h1>
                 
				</div>

				<div class="panel-body">

					<asp:Repeater ID="RepeaterNEWS" runat="server">
						<ItemTemplate>
                            <asp:Label ID="news" runat="server" Text='<%# Eval("newsTitle") %>'> </asp:Label>
						
							<hr />
						</ItemTemplate>

					</asp:Repeater>
					
				</div>
			</div>
		
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
		
			<!-- Alert -->
		
			<!-- Articles -->
			<div class="row">
				<article class="col-xs-12">
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object" src="image/Services/a1.jpg" alt="" style="width:140px;"/>
							</a>
						</div>
						<div class="media-body">
							<h3 class="media-heading"><a href="service/S1Angiography.aspx">Angiography</a></h3>
							<p>X-ray examination of arteries and veins with a contrast medium to differentiate them from surrounding organs.  </p>
						
						<ul class="list-inline">
						<!--	<li><iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=small&width=67&height=20&appId" width="67" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe></li>
						--></ul>
						</div>
					</div>
				</article>
			</div>
			<hr/>
			<div class="row">
				<article class="col-xs-12">
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object" src="image/Services/a2.jpg" alt="" style="width:140px;"/>
							</a>
						</div>
						<div class="media-body">
							<h3 class="media-heading"><a href="service/S2FibroScan.aspx">Fibro Scan</a></h3>
							<p>Non-invasive , pain-free procedure – comprehensive assessment of your fatty liver in less than 5 minutes. Nawaloka Hospital introduces the  1st FibroScan in Sri Lanka</p>
						
						<ul class="list-inline">
							<!--	<li><iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=small&width=67&height=20&appId" width="67" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe></li>
						--></ul>
						</div>
					</div>
				</article>
			</div>
			<hr/>      
			<div class="row">
				<article class="col-xs-12">
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object" src="image/Services/a3.jpg" alt="" style="width:140px;"/>
							</a>
						</div>
						<div class="media-body">
							<h3 class="media-heading"><a href="service/S3PalliativeCareUnit.aspx">Palliative Care Unit</a></h3>
							<p>The care of patients with terminal illness where relief of symptoms is the priority.(e.g. Cancer,  Kidney Failure, Heart Failure,Motor Neurone Failure,Liver Failure)</p>
						
						<ul class="list-inline">
                            <!--	<li><iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=small&width=67&height=20&appId" width="67" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe></li>
						--></ul>
						</div>
					</div>
				</article>
			</div>
			<hr/>
		</div><!--/Center Column-->


	  <!-- Right Column -->
	  <div class="col-sm-3">
 
			<!-- Latest News Panel --> 
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><span><asp:Image ID="Image3" runat="server" ImageUrl="~/image/icon/Speech Bubble.png" Width="25px" /></span>Our Services</h1>
				</div>
				<div class="list-group">
					<a href="service/S4Sleep Lab.aspx" class="list-group-item">Sleep Lab</a>
					<a href="service/S1Angiography.aspx" class="list-group-item">Angiography</a>
					<a href="service/S2FibroScan.aspx" class="list-group-item">Fibro Scan</a>
					<a href="service/S3PalliativeCareUnit.aspx" class="list-group-item">Palliative Care Unit</a>
				</div>
			</div>
			
			
 
			<!-- Facebook -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span><asp:Image ID="Image4" runat="server" ImageUrl="~/image/icon/Facebook.png" Width="25px" /></span> 
						Facebook Page
					</h3>
				</div>
				<div class="panel-body">
				<!--	<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Froyalhealthcareservices%2F&tabs=timeline&width=250&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="250" height="500" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
				-->	</div>
				</div>
			</div>

	  </div><!--/Right Column -->

	</div><!--/container-fluid-->

		<!-- Footer -->
	<div>
		<uc1:footerIndex runat="server" ID="footerIndex" />
	</div>
		<!-- Footer -->
	</form>

	
</body>
</html>

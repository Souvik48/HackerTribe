
<!DOCTYPE HTML>
<html>
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Pricing -->
	<link rel="stylesheet" href="css/pricing.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<body>
	<aside id="fh5co-hero">
		<div class="flexslider">
		<ul class="slides">
		   	<li style="background-image: url(images/bg2.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1 class="heading-section">Payment Gateway</h1>
									<h2>Your data is Secured!</h2>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	 </div>
	 </aside>
	 <%
	 	
	 %>
	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<!--  
					<div class="fh5co-contact-info">
						<h3>Welcome to E-Transaction</h3>
						<ul>
							<li class="address">ITER College,Jagamara, <br> Khandagiri, Bhubaneshwar.</li>
							<li class="phone"><a href="tel://1234567920">+91  8877062467</a></li>
							<li class="email"><a href="mailto:info@yoursite.com">siddhantojha48@gmail.com</a></li>
							<li class="url"><a href="http://freehtml5.co">instagram</a></li>
						</ul>
					</div>
					-->
				</div>
				<div class="col-md-6 animate-box">
					<h3>Please enter your Card Details</h3>
					<form  method="post" action="tutorial.controller.ContactAdmin" >
						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">First Name</label> -->
								<input type="text" id="fname" class="form-control" name="cardholdername" placeholder="Card holder name">
							</div>
							<div class="col-md-6">
								<!-- <label for="lname">Last Name</label> -->
								<input type="text" id="lname" class="form-control" name="expirydate" placeholder="Enter Expiry Date">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<input type="text" id="email" class="form-control"  name="cardno"  placeholder="Your Card No.">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<input type="text" id="subject" class="form-control" name="cvv" placeholder="CVV">
							</div>
						</div>

						<!-- <div class="row form-group">
							<div class="col-md-12">	-->
								<!-- <label for="message">Message</label> -->
						<!--		<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
						 	</div>
						</div>
						 -->
						 
						<div class="form-group">
							<input type="submit" value="Confirm" class="btn btn-primary">
						</div>

					</form>		
				</div>
			</div>
			
		</div>
	</div>
 <!--		<jsp:include page="mainfooter.jsp"></jsp:include>		-->
	</body>
</html>

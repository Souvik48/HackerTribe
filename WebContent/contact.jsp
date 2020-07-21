<!DOCTYPE HTML>
<html>
	<jsp:include page="sellerheader.jsp"></jsp:include>
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
			   					<h1 class="heading-section">Contact us</h1>
									<h2>TribeKart Help</h2>
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
					
					<div class="fh5co-contact-info">
						<h3>Contact Information</h3>
						<ul>
							<li class="address">ITER College,Jagamara, <br> Khandagiri, Bhubaneshwar.</li>
							<li class="phone"><a href="tel://1234567920">+91  8877062467</a></li>
							<li class="email"><a href="mailto:info@yoursite.com">siddhantojha48@gmail.com</a></li>
							<li class="url"><a href="http://freehtml5.co">instagram</a></li>
						</ul>
					</div>

				</div>
				<%
					String sellerEmail=(String)session.getAttribute("selleremailid");
				
				%>
				<div class="col-md-6 animate-box">
					<h3>Get In Touch</h3>
					<form  method="post" action="Hack.controller.ContactAdmin" >
						<!-- <div class="row form-group">
							<div class="col-md-6">
								<label for="fname">First Name</label>
								<input type="text" id="fname" class="form-control" name="fisrtname" placeholder="Your firstname">
							</div>
							<div class="col-md-6">
								<label for="lname">Last Name</label>
								<input type="text" id="lname" class="form-control" name="lastname" placeholder="Your lastname">
							</div>
						</div>
 -->
						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<input type="text" id="email" class="form-control"  name="emailid"  value=<%out.print(sellerEmail); %>       placeholder="Your email address">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<input type="text" id="subject" class="form-control" name="subject" placeholder="Your subject of this message">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Message</label> -->
								<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message" class="btn btn-primary">
						</div>

					</form>		
				</div>
			</div>
			
		</div>
	</div>
 <jsp:include page="mainfooter.jsp"></jsp:include>
	</body>
</html>

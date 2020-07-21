<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="sellerheader.jsp"></jsp:include>
</head>
<body>
<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>Terms and Conditions</h3>
						<ul>
							<li>*Minimum withdrawal amount is<br> Rs.1000.</li>
							<li>*Courier charges per transaction<br> is Rs.100</li>
				
						</ul>
					</div>

				</div>
				<div class="col-md-6 animate-box">
					<h3>Enter your details</h3>
					<form  method="post" action="tutorial.controller.ContactAdmin" >
						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">First Name</label> -->
								<input type="text" id="fname" class="form-control" name="fisrtname" placeholder="Your firstname">
							</div>
							<div class="col-md-6">
								<!-- <label for="lname">Last Name</label> -->
								<input type="text" id="lname" class="form-control" name="lastname" placeholder="Your lastname">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" id="email" class="form-control"  name="phone_no"  placeholder="Your phone no.">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Message</label> -->
								<textarea name="address" id="message" cols="30" rows="10" class="form-control" placeholder="Your Address"></textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="Withdraw" class="btn btn-primary">
						</div>

					</form>		
				</div>
			</div>
			
		</div>
	</div>



<jsp:include page="mainfooter.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="sellerheader.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Seller Signup</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<li style="background-image: url(images/bg2.jpg);">	 
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-540 p-l-30 p-r-30 p-b-70">
				
					<span class="login100-form-title p-b-25 p-t-30">
						Seller SignUp
					</span>

					<form method="post" action="Hack.controller.sellerRegistration">
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="seller_name" placeholder="Name" style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Enter Mail">
						<input class="input100" type="text" name="seller_email" placeholder="E.mail" style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-10" data-validate = "enter Phone no.">
						<input class="input100" type="text" name="seller_phone_no" placeholder="Phone no." style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					
				
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Institute is required">
						<input class="input100" type="text" name="flat_no" placeholder="Flat No" style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					
						<div class="wrap-input100 validate-input m-b-10" data-validate = "Institute is required">
						<input class="input100" type="text" name="state" placeholder="State" style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					
						<div class="wrap-input100 validate-input m-b-10" data-validate = "Institute is required">
						<input class="input100" type="text" name="city" placeholder="city" style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					
						<div class="wrap-input100 validate-input m-b-10" data-validate = "Institute is required">
						<input class="input100" type="text" name="pincode" placeholder="Pincode" style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					
					
					

					  
                   
					
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="seller_password" placeholder="Password"style="height: 40px">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Confirm Password is required">
						<input class="input100" type="password" name="seller_confirm_password" placeholder="Confirm-Password"style="height: 40px">
						<span class="focus-input100"></span>
					</div>
				
                       

				  <div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Sign Up
						</button>
					</div>
			</form>
				
			</div>
		</div>
	</div>
	</li>

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
	 <jsp:include page="mainfooter.jsp"></jsp:include>
</html>
<!DOCTYPE html>
	<%@page import="java.util.Iterator"%>
<%@page import="Hack.model.dao.ProductDao"%>
<%@page import="Hack.db.product"%>
<%@page import="Hack.model.dao.SellerDao"%>
<%@page import="Hack.db.seller"%>
<%@page import="java.util.ArrayList"%>
<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Personal</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="seller/css/linearicons.css">
			<link rel="stylesheet" href="seller/css/font-awesome.min.css">
			<link rel="stylesheet" href="seller/css/bootstrap.css">
			<link rel="stylesheet" href="seller/css/magnific-popup.css">
			<link rel="stylesheet" href="seller/css/jquery-ui.css">				
			<link rel="stylesheet" href="seller/css/nice-select.css">							
			<link rel="stylesheet" href="seller/css/animate.min.css">
			<link rel="stylesheet" href="seller/css/owl.carousel.css">				
			<link rel="stylesheet" href="seller/css/main.css">
		</head>
<body>
<jsp:include page="sellerheader.jsp"></jsp:include>
   <style type="text/css">
    	#teacherphoto
    	{
    		
    		height: 250px;
    		width: 250px;
    		overflow: hidden;
    		border-radius: 50%;
    	}
    </style>

<div id="main">
        <div class="container">
            <div class="row">
               <%
                	String emailid=(String)session.getAttribute("selleremailid");
                	seller s;
                	s=SellerDao.getSeller(emailid);
               
                %>
                 
       <!-- About Me (Left Sidebar) Start -->
                 <div class="col-md-3">
                   <div class="about-fixed">
                    
                     <div class="my-pic">
                   
                      
                        <img src="/Hack/UserPhotos/store.png" alt="" id="teacherphoto">
                       
                        
                      
                       
                        </div>
                     
                      
                      
                      <div class="my-detail">
                    	
                        
                     </div>
                  </div>
                </div>
                <!-- About Me (Left Sidebar) End -->
                
                
                
             
                 <!-- Blog Post (Right Sidebar) Start -->
                 <div class="col-md-9">
                    <div class="col-md-12 page-body" style="background-image: url(images/bg_color.png);">
                    	<div class="row">
                    		
                            
                            <div class="sub-title">
                           		<h2>My Profile</h2>
                             </div>
                            
                            
                            <div class="col-md-12 content-page">
                            	
                                
                              <h5> NAME :<%out.print(s.getName()+"."); %></h5>
                              <h5> Email-Id :<%out.print(s.getEmail()+"."); %></h5>
                              <h5> PHONE NO:<%out.print(s.getPhone_no()+"."); %></h5>
                              <h5> FLAT NO:<%out.print(s.getFlat_no()+"."); %></h5>
                              <h5> CITY:<%out.print(s.getCity()+"."); %></h5>
                              <h5> STATE:<%out.print(s.getState()+"."); %></h5>
                              <h5> PINCODE:<%out.print(s.getPincode()+"."); %></h5>
                              <h5> STATUS:<%out.print(s.getStatus()+"."); %></h5>
                       
                      			<button class="btn">
							<li><a href="AddProduct.jsp">Add Product</a></li>
						</button> 
						
                      			<br><br>
                             </div>
                             <div class="sub-title">
                           		<h2>My Wallet</h2>
                             </div>
                            
                            
                            <div class="col-md-12 content-page">
                            	
                                
                              <h5> Wallet Balance :<%//out.print(s.getName()+"."); %></h5>
                              
                       
                      			<button class="btn">
							<li><a href="withdraw.jsp">Withdraw</a></li>
						</button> 
						
                      			
                             </div>
                         </div>
                         </div>   
                  </div>
            </div>
         </div>
<section class="portfolio-area section-gap" id="portfolio">
                <div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-8">
		                    <div class="title text-center">
		                        <h1 class="mb-10">My Products</h1>
		                      
		                    </div>
		                </div>
		            </div>
                    
                   <!--  <div class="filters">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".vector">Vector</li>
                            <li data-filter=".raster">Raster</li>
                            <li data-filter=".ui">UI/UX</li>
                            <li data-filter=".printing">Printing</li>
                        </ul>
                    </div> -->
                    
                    <div class="filters-content">
                        <div class="row grid">
                        <%
                        	ArrayList<product> arr=new ArrayList<product>();
                        	arr=ProductDao.getSellerProduct(emailid);
                        	
                        	Iterator itr=arr.iterator();
                        	while(itr.hasNext())
                        	{
                        		
                        	product temp=(product)itr.next();
                        	
                        %>
                           
                                                     
                          
                           
                            <div class="single-portfolio col-sm-4 all raster">
                            	<div class="relative">
	                            	<div class="thumb">
	                            		<div class="overlay overlay-bg"></div>
	                            		 <img class="image img-fluid" src="/Hack/UserPhotos/<%out.print(temp.getPhoto()); %>" alt="">
	                            	</div>
									<a href="seller/img/p6.jpg" class="img-pop-up">	
									  <div class="middle">
									    <div class="text align-self-center d-flex"><img src="seller/img/preview.png" alt=""></div>
									  </div>
									</a>                             		
                            	</div>
                                <div class="p-inner">
                                    <h4>Product Name:<%out.print(temp.getProduct_name()); %></h4>
                                    <div class="cat">Category:<%out.print(temp.getCategory()); %></div>
                                    <h4>Description:<%out.print(temp.getProduct_description()); %></h4>
                                     <h4>Quantity:<%out.print(temp.getProductquantity()); %></h4>
                                    <button class="btn" >
                                    <a href="Hack.controller.addquantityProduct?pid=<%= temp.getProduct_id() %>&quantity=<%=temp.getProductquantity() %>">Add</a>
						</button>
								 <button class="btn" >
							<a href="Hack.controller.deleteProduct?pid=<%= temp.getProduct_id() %>&quantity=<%=temp.getProductquantity() %>">Delete</a>
						</button>
                                </div>
                            </div>
                            <%
                            
                        	}
                            %>
                            
                            
                            
                        </div>
                    </div>
                    
                </div>
            </section>
             <section class="testimonial-area section-gap">
		        <div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-8">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Client’s Feedback About Me</h1>
		                        <p>It is very easy to start smoking but it is an uphill task to quit it. Ask any chain smoker or even a person.</p>
		                    </div>
		                </div>
		            </div>
		            <div class="row">
		                <div class="active-testimonial">
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="seller/img/elements/user1.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                                Do you want to be even more successful? Learn to love learning and growth. The more effort you put into improving your skills, the bigger the payoff you.		     
		                            </p>
		                            <h4>Harriet Maxwell</h4>
		                            <p>CEO at Google</p>
		                        </div>
		                    </div>
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="seller/img/elements/user2.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                                A purpose is the eternal condition for success. Every former smoker can tell you just how hard it is to stop smoking cigarettes. However.
		                            </p>
		                            <h4>Carolyn Craig</h4>
		                            <p>CEO at Facebook</p>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		    <section class="facts-area section-gap" id="facts-area">
				<div class="container">				
					<div class="row">
						<div class="col-lg-3 col-md-6 single-fact">
							<h1 class="counter">2536</h1>
							<p>Projects Completed</p>
						</div>
						<div class="col-lg-3 col-md-6 single-fact">
							<h1 class="counter">6784</h1>
							<p>Happy Clients</p>
						</div>
						<div class="col-lg-3 col-md-6 single-fact">
							<h1 class="counter">2239</h1>
							<p>Cups of Coffee</p>
						</div>	
						<div class="col-lg-3 col-md-6 single-fact">
							<h1 class="counter">435</h1>
							<p>Real Professionals</p>
						</div>												
					</div>
				</div>	
			</section>
<jsp:include page="mainfooter.jsp"></jsp:include>
</body>
</html>
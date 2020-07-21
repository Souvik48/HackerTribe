<%@page import="Hack.model.dao.ReviewDao"%>
<%@page import="Hack.db.Review"%>
<%@page import="Hack.db.product"%>
<%@page import="Hack.model.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="mainheader.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <!-- Font awesome -->
    <link href="Search/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="Search/css/bootstrap.css" rel="stylesheet">   
    <!-- slick slider -->
    <link rel="Search/stylesheet" type="text/css" href="Search/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="Search/css/nouislider.css">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="Search/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Theme color -->
    <link id="switcher" href="Search/css/theme-color/default-theme.css" rel="stylesheet">     

    <!-- Main style sheet -->
    <link href="Search/css/style.css" rel="stylesheet">    

   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <style type="text/css">
    	#teacherphoto
    	{
    		
    		height: 400px;
    		width: 400px;
    		overflow: hidden;
    		border-radius: 50%;
    	}
    </style>
    

</head>
<%
	
	String product_id=request.getParameter("productid");
	System.out.println(product_id+"-----------------");
	product t=ProductDao.getDetails(product_id);
%>
<body>
<section id="aa-properties">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="aa-properties-content">            
            <!-- Start properties content body -->
            <div class="aa-properties-details">
             <div class="aa-properties-details-img">
              
                    
                        <img src="/Hack/UserPhotos/<%=t.getPhoto()%>" alt="" id="teacherphoto">
                       
                        
                      
             </div>
             <div class="aa-properties-info">
               <h2><%out.print(t.getProduct_name());%></h2>
               <span class="aa-price"><h4>Price  :</h4><%out.print(t.getPrice()); %></span>
               <h4>Description</h4>
               <ul>
                 <li><%out.print(t.getProduct_description()); %></li>
                 <!-- <li>Advanced Java(J2EE)</li>
                 <li>Hibernate</li>
                 <li>Java Graphic Interface</li> -->
               </ul>
               </div>
             <!-- Properties social share -->
             <div class="aa-properties-social">
               <ul>
                 <li>Social</li>
                 <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                 <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                 <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                 <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
               </ul>
             </div>
             <div class="aa-properties-social">
               <ul>
                 <li>Social</li>
                 <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                 <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                 <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                 <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
               </ul>
             </div>
         <%--     <div class="aa-properties-social">
               <ul>
                 <li>Latest Reviews</li>
                 <br></br>
                 <%
                 	ArrayList<Review> review=ReviewDao.getReview(emailid);
                 if(review!=null)
                 {
                	 int size=review.size()-1;
						int i=1;
						while(size>=0 && i<=3)
						{
                			 
                 	             		 Review temp=review.get(size);   
                 %>
                 					<span><%=temp.getStudentemailid() %></span>
									<blockquote>
										<p>&ldquo;<%=temp.getReview() %>&rdquo;</p>
									</blockquote>
									
					<%
					size--;
					i++;
                 	}
                 }
					%>
									
               </ul>
             </div> --%>
             
             <div class="aa-properties-social">
               <ul>
                 <li>Add a Review</li>
                 <%-- <form method="post" action="tutorial.controller.StudentReviewValidation" >
                            <div class="row">
                             <%@ page import="tutorial.db.Student,tutorial.model.dao.StudentDao,java.util.*" %>
                             <%
                             String url = request.getRequestURI().toString();
                         	session.setAttribute("url", url);
                         	String emailidStudent=(String)session.getAttribute("emailid");
                         	
                             %>
                              <input type="hidden" name="url" value="<%=url%>">
                              <input type="hidden" name="studentemailid" value="<%=emailidStudent%>">
                               <input type="hidden" name="teacheremailid" value="<%=emailid%>">
                                
                 	
                 		<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<input type="text"  name="userreview" id="subject" class="form-control" placeholder="Your Review">
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="Submit" class="btn btn-primary">
						</div>
					</div>
				</form> --%>
               </ul>
             </div>
             
            <%--  <form method="post" action="tutorial.controller.StudentEnrollment" >
             <div class="col-md-2 text-center">
             <input type="hidden" name="studentemailid" value="<%=emailidStudent%>">
             <input type="hidden" name="teacheremailid" value="<%=emailid%>">
                                
                <div class="aa-single-advance-search">
                  <input class="aa-search-btn" type="submit" value="Enroll">
                </div>
              </div>
              </form> --%>
            </div>           
          </div>
          
        </div>
      </div>
    </div>
    </section>
</body>
<jsp:include page="mainfooter.jsp"></jsp:include>
</html>
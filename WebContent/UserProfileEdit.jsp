
<!DOCTYPE html>
<%@page import="Hack.db.buyer"%>
<%@page import="Hack.model.dao.UserDao"%>

<html lang="en">

  <head>
    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- SEO -->
    <meta name="description" content="150 words">
    <meta name="author" content="uipasta">
    <meta name="url" content="http://www.yourdomainname.com">
    <meta name="copyright" content="company name">
    <meta name="robots" content="index,follow">
    
    
    <title>Profile Updation</title>    
    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugin.css">
    
    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="Profile/text/css" href="css/style.css">
    
    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">
    
     <!-- Font awesome -->
    <link href="css/plugin.css" rel="stylesheet">
    <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <jsp:include page="mainheader.jsp"></jsp:include>
<style type="text/css">
    #teacherphotos
    {
    	height: 250px;
    	width: 250px;
    	overflow: hidden;
    	/* border-style: 1px solid black; */
    	border-radius: 50%;
    }
    </style>
  </head>

 <body>
<%
	String email=(String)session.getAttribute("email");
 %>
 
     <form action="Hack.controller.UserProfileUpdate" method="post" enctype="multipart/form-data">
	 <!-- Preloader Start -->
     <div class="preloader">
	   <div class="rounder"></div>
      </div>
  <input type="hidden" name="email" value="<%=email%>"/>

      <!-- Preloader End -->
   <%
            		buyer user=UserDao.getDetails(email);
    %>
    <div id="main">
        <div class="container">
            <div class="row">
       <!-- About Me (Left Sidebar) Start -->
                 <div class="col-md-3">
                   <div class="about-fixed">
                    
                     <div class="my-pic">
                       <%
                    if(user.getPhoto()!=null){
                    %>
                        <img src="/Hack/UserPhotos/<%=user.getPhoto()%>" alt="" id="teacherphotos">
                       
                        </div>
                        <%
                        }else{
                    %>
                      <img src="/Hack/UserPhotos/default.jpg" alt="" id="teacherphotos">
                       
                        </div>
                      <%} %>
                        
                                
                                <input type="file" name="file"/>
                            
                        </div>
                  </div>
                
                <!-- About Me (Left Sidebar) End -->
                
                
                
                
                 
                 <!-- Blog Post (Right Sidebar) Start -->
                 <div class="col-md-9">
                   <div class="col-md-12 page-body" style="background-image: url(images/bg_color.png);">
                    	<div class="row">
                    		
                            
                            <div class="sub-title">
                           		<h2 align="justify"><%= user.getName() %></h2>
                             </div>
                            
                            
                            <div class="col-md-12 content-page">
                            
                            
                            	
                                <h5 > NAME :</h5><p><input type="text" value= <%= user.getName() %> name="newName" ></p>		    
                              <h5 > PHONE NO: </h5><p><input type="text" value= <%= user.getPhone_no() %> name="newPhoneNo" ></p>
                              
                              
                                <h5> PASSWORD:</h5><p><input type="text" value= <%= user.getPassword() %> name="newPassword" ></p>
                            
                 
                 <button class="btn">
							 <input type="submit" value="Save Changes"/>
						</button>
					
                             </div>
                         </div>
                         </div>   
                  </div>
            </div>
         </div>
     
    </form>


    
   </body>
   <jsp:include page="mainfooter.jsp"></jsp:include>
 </html>
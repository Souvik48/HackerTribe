<!DOCTYPE html>
<%@page import="Hack.db.seller"%>
<%@page import="Hack.model.dao.SellerDao"%>
<%@page import="Hack.model.dao.UserDao"%>
<%@page import="Hack.db.buyer"%>
<%@page import="Hack.model.dao.ContactDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="Hack.db.Contact"%>
<%@page import="java.util.Iterator"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="Admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="Admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="Admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Admin/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="adminindex2.jsp">
                            <img src="Admin/images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
    
        </header>
        <!-- END HEADER MOBILE-->

        
        <!-- MENU SIDEBAR-->
         
           <jsp:include page="adminaside.jsp"></jsp:include>
        <!-- END MENU SIDEBAR-->
      
      
        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
           <jsp:include page="adminheader.jsp"></jsp:include>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                    
                                </div>
                            </div>
                        </div>
                        <%
                        	ArrayList<buyer> str=UserDao.findBuyerInfo();
                        int totaluser=str.size();
                        %>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2><%out.print(totaluser); %></h2>
                                                <span>Active Users</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                             <%-- <%
                        	ArrayList<Enrollment> etr=EnrollmentDao.getEnrollmentInfo();
                       		 int totalrequested=etr.size();
                        %> --%>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2><%//out.print(totalrequested); %></h2>
                                                <span>Items Sold</span>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <%-- <%
                        	ArrayList<Enrollment> estr=EnrollmentDao.getactiveEnrollmentInfo();
                       		 int totalsold=estr.size();
                        %> --%>
                           
                             <%
                        	ArrayList<seller> ttr=SellerDao.requestedSellerInfo();
                       		 int totalseller=ttr.size();
                        %>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                      <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2><%out.print(totalseller); %></h2>
                                                <span>Total Sellers</span>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                           <div class="row">
                            
            
                             <%
                                    	ArrayList<Contact> contac=new ArrayList<Contact>();
                                    	contac=ContactDao.getContanctInfo();
                                    	int req=contac.size();
                                    	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");  
                                    	   LocalDateTime now = LocalDateTime.now();  
                                    	   String date11=dtf.format(now);  
                                    	
                                    %>
                            
                        
                            <div class="col-lg-9">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                    <div class="au-card-title" style="background-image:url('Admin/images/bg-title-01.jpg');">
                                        <div class="bg-overlay bg-overlay--blue"></div>
                                        <h3>
                                            <i class="zmdi zmdi-account-calendar"></i><%out.print(date11); %></h3>
                                        <button class="au-btn-plus">
                                            <i class="zmdi zmdi-plus"></i>
                                        </button>
                                    </div>
                                    <div class="au-task js-list-load">
                                        
                                        <div class="au-task-list js-scrollbar3">
                                        
                                        <%
                                            	Iterator<Contact> co=contac.iterator();
                                            	while(co.hasNext())
                                            	{
                                            		
                                            		Contact c=co.next();
                                            		System.out.println(c.getEmailid());
                                            		System.out.println(c.getMessage());
                                            		System.out.println(c.getDate_time());
                                            		
                                            		
                                            %>
                                             
                                            <div class="au-task__item au-task__item--danger">

                                                <div class="au-task__item-inner" onclick="openPage('adminrespond.jsp?emailid=<%out.print(c.getEmailid());%>')">
                                                 
                                                 
                                                    <h5 class="task" >
                                                        <%out.print(c.getEmailid()); %>
                                                    </h5>
                                                    <h6><%out.print(c.getSubject()); %></h6>
                                                     <p><%out.print(c.getMessage()); %></p>
                                                    <span class="time"><%out.print(c.getDate_time()); %></span>
                                                </div>
                                            </div>
                                            
                                             <%
                                            	}
                                            %>
                                            
                                            
                                           
                                            
                                        </div>
                                        <div class="au-task__footer">
                                            <button class="au-btn au-btn-load js-load-btn">load more</button>
                                        </div>
                                    </div>
                                </div>
                            </div></div></div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © TribeKart Pvt. Ltd. All rights reserved.</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="Admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="Admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="Admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="Admin/vendor/slick/slick.min.js">
    </script>
    <script src="Admin/vendor/wow/wow.min.js"></script>
    <script src="Admin/vendor/animsition/animsition.min.js"></script>
    <script src="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="Admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="Admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="Admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="Admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="Admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="Admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="Admin/js/main.js"></script>

</body>

</html>
<!-- end document-->

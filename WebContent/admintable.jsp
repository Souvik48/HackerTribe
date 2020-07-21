<!DOCTYPE html>
<%@page import="Hack.db.buyer"%>
<%@page import="Hack.model.dao.UserDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="Hack.db.seller"%>
<%@page import="Hack.model.dao.SellerDao"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Tables</title>

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
                        <a class="logo" href="index.html">
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
            <!-- END HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                    
                    
                      <div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <%
                                ArrayList<seller> arr=new ArrayList<seller>();
                            	arr=SellerDao.requestedSellerInfounadded();
                                %>
                                <h3 class="title-5 m-b-35">Seller info</h3>
                               
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                               
                                                <th>Name</th>
                                                <th>email</th>
                                                <th>address</th>
                                                <th>city</th>
                                                <th>state</th>
                                                <th>status</th>
                                                <th>wallet balance</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                        	Iterator<seller> itr=arr.iterator();
                                        	while(itr.hasNext())
                                        	{
                                        		seller t=itr.next();
                                        %>
                                            <tr class="tr-shadow">
                                               
                                                <td><%out.print(t.getName()); %></td>
                                                <td>
                                                    <span class="block-email"><%out.print(t.getEmail()); %></span>
                                                </td>
                                                <td class="desc"><%out.print(t.getFlat_no()); %></td>
                                                <td><%out.print(t.getCity()); %></td>
                                                <td><%out.print(t.getState()); %></td>
                                               
                                                <td>
                                                	 <%
                                                	if(t.getStatus()==1)
                                                	{
                                                	%>
                                                    <span class="status--process">Processed</span>
                                                    <%
                                                	}
                                                	else
                                                	{
                                                	%>
                                                	<span class="status--denied">Pending</span>
                                                	<%
                                                	}
                                                	%>
                                                    
                                                </td>
                                                
                                               <td><%out.print(t.getWallet_balance()); %></td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <a   class="item"  data-toggle="tooltip" data-placement="top" title="Allow" href="Hack.controller.ChangePermission?sellerid=<%=t.getEmail()%>">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                           
                                                        </a>
                                                       
                                                        <a  class="item" data-toggle="tooltip" data-placement="top" title="Delete" href="Hack.controller.Deleteseller?sellerid=<%=t.getEmail()%>">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </a>
                                                       
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            <%
                                        	}
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                        
                        
                        
               
                        
                        <div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <%
                                ArrayList<seller> arr1=new ArrayList<seller>();
                            	arr1=SellerDao.requestedSellerInfo();
                                %>
                                <h3 class="title-5 m-b-35">Seller Info</h3>
                               
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                               
                                                <th>name</th>
                                                <th>email</th>
                                                <th>phone no</th>
                                                <th>address</th>
                                                <th>walet balance</th>
                                                <th>status</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                        	Iterator<seller> itr1=arr1.iterator();
                                        	while(itr1.hasNext())
                                        	{
                                        		seller t=itr1.next();
                                        %>
                                            <tr class="tr-shadow">
                                               
                                                <td><%out.print(t.getName()); %></td>
                                                <td>
                                                    <span class="block-email"><%out.print(t.getEmail()); %></span>
                                                </td>
                                                <td class="desc"><%out.print(t.getPhone_no()); %></td>
                                                <td><%out.print(t.getFlat_no()+","+t.getCity()+","+t.getState()+","+t.getPincode()); %></td>
                                               <td><%out.print(t.getWallet_balance()); %></td>
                                                <td>
                                                	 <%
                                                	if(t.getStatus()==1)
                                                	{
                                                	%>
                                                    <span class="status--process">Processed</span>
                                                    <%
                                                	}
                                                	else
                                                	{
                                                	%>
                                                	<span class="status--denied">Pending</span>
                                                	<%
                                                	}
                                                	%>
                                                    
                                                </td>
                                                
                                                
                                                <td>
                                                    <div class="table-data-feature">
                                                     
                                                       
                                                        <a  class="item" data-toggle="tooltip" data-placement="top" title="Delete" href="Hack.controller.Deleteseller?sellerid=<%=t.getEmail()%>">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </a>
                                                       
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            <%
                                        	}
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                        <div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE-->
                                <h3 class="title-5 m-b-35">User Info</h3>
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Email id</th>
                                                <th>Phone No</th>
                                                <th>Address</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                        ArrayList<buyer> s=new ArrayList<buyer>();
                                        s=UserDao.findBuyerInfo();
                                        Iterator<buyer> sitr=s.iterator();
                                        while(sitr.hasNext())
                                        {
                                        	
                                        	buyer s1=sitr.next();
                                        %>
                                            <tr>
                                                <td><%out.print(s1.getName()); %></td>
                                                <td><%out.print(s1.getEmail()); %></td>
                                                <td><%out.print(s1.getPhone_no()); %></td>
                                                <td ><%out.print(s1.getFlat_no()+","+s1.getCity()+","+s1.getState()+","+s1.getPincode()); %></td>
                                                
                                            </tr>
                                            
                                            <%
                                        }
                                            %>
                                      </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE-->
                            </div>
                        </div>
                                 <div class="row">
                            <div class="col-lg-12">
                            <h3 class="title-5 m-b-35">Order Info</h3>
                                <div class="table-responsive table--no-card m-b-30">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>date</th>
                                                <th>order ID</th>
                                                <th>Buyer Name</th>
                                                <th>Seller Name</th>
                                                
                                                <th class="text-right">price</th>
                                                
                                            </tr>
                                        </thead>
                                        <%-- <%
                                        	ArrayList<Enrollment> enroll=new ArrayList<Enrollment>();
                                        enroll=EnrollmentDao.getEnrollmentInfo();
                                        	
                                        %>
                                        <tbody>
                                        <%
                                        Iterator<Enrollment> itr1=enroll.iterator();
                                    	while(itr1.hasNext())
                                    	{
                                    		
                                    		Enrollment e=itr1.next();
                                    		int price=TeacherDao.PriceDetails(e.getTeacheremailid());
                                    		String studentname=StudentDao.findStudentName(e.getStudentemailid());
                                    		String teachername=TeacherDao.findTeacherName(e.getTeacheremailid());
                                        %>
                                            <tr>
                                                <td><%out.print(e.getDate_time()); %></td>
                                                <td><%out.print(e.getOrderid()); %></td>
                                                <td><%out.print(studentname); %></td>
                                                 <td><%out.print(teachername); %></td>
                                                
                                                <td class="text-right"><%out.print(price); %></td>
                                               
                                                
                                            </tr>
                                           <%
                                    		}
                                           %>
                                             --%>
                                           
                                           
                                            
                                            
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    
                        </div>
                    </div>
                </div>
            </div>
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

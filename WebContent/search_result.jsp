<%@page import="java.util.Iterator"%>
<%@page import="Hack.model.dao.SellerDao"%>
<%@page import="Hack.db.seller"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
    

 <jsp:include page="mainheader.jsp"></jsp:include>
<body>
<form method="get" action="searchdisplay.jsp">
<section id="aa-advance-search">
    <div class="container">
      <div class="aa-advance-search-area">
        <div class="form">
         <div class="aa-advance-search-top">
            <div class="row">
              <div class="col-md-4">
                <div class="aa-single-advance-search">
                  <select name="category" id="category">
                   <option value="0" selected>Category</option>
                    <option value="Handlooms">Handlooms</option>
                    <option value="Paintings">Paintings</option>
                    <option value="Wooden_Crafts">Wooden Crafts</option>
                    <option value="Jewellery">Jewellery</option>
                    <option value="Handicrafts">Handicrafts</option>
                    <option value="Metals">Metals</option>
                    <option value="Raw_Materials">Raw Materials</option>
                    <option value="Others">Others</option>
                  </select>
                </div>
              </div>
             
               <div class="col-md-4">
                 <div class="aa-single-advance-search">
                  <select name="price" id="price">
                    <option value="0" selected>Price</option>
                    <option value="100-500">100-500</option>
                    <option value="500-1000">500-1000</option>
                    <option value=">1000">>1000</option>
                  </select>
              </div>
              </div>
              
        <!--  <input type="hidden" name="course" value="course"/>
              <input type="hidden" name="ratings" value="rating"/>
 				<input type="hidden" name="price" value="price" />
 				<input type="hidden" name="location" value="location" />  -->
              <div class="col-md-4">
                <div class="aa-single-advance-search">
                  <a href="searchdisplay.jsp"></a><input class="aa-search-btn" type="submit" value="Search"></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  </form>
  
  
  <br><br><br><br>
</body>
<br><br><br><br>
<jsp:include page="mainfooter.jsp"></jsp:include>
</html>
 <%@page import="Hack.model.dao.ContactDao"%>
<%@page import="Hack.db.Contact"%>
<%@page import="Hack.model.dao.SellerDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="Hack.db.seller"%>
<%@page import="java.util.ArrayList"%>
<header class="header-desktop">
<script type="text/javascript">
	function preventBack(){
		window.history.forward();
	}
	setTimeout("preventBack()",0);
	
	windows.onunload = function () { null };
	</script>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                               
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                 <%
                                    	ArrayList<Contact> contac=new ArrayList<Contact>();
                                    	contac=ContactDao.getContanctInfo();
                                    	int req=contac.size();
                                    	
                                    %>
                                
                                
                                    <%
                                    	ArrayList<seller> arr=new ArrayList<seller>();
                                    	arr=SellerDao.requestedSellerInfounadded();
                                    	int size=arr.size();
                                    	
                                    %>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity"><%out.print(size); %></span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p><%out.print("you have "+size+" notification"); %></p>
                                            </div>
                                            
                                            <%
                                            Iterator<seller> itr=arr.iterator();
                                            while(itr.hasNext())
                                            {
                                            	seller temp=itr.next();
                                            %>
                                            
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                   <p><%out.print(temp.getName()+" "+"wants to sell in TribeKart"); %></p>
                                                </div>
                                            </div>
                                            <%
                                            }
                                            %>
                                            
                                            
                                            <div class="notifi__footer">
                                                <a href="#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="Admin/images/icon/ts.png" alt="Tech Studies" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">TribeKart</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="Admin/images/icon/ts.png" alt="Tech Studies" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="adminindex1.jsp">TribeKart</a>
                                                    </h5>
                                                    <span class="email">tribekart99@gmail.com</span>
                                                </div>
                                            </div>
                                            
                                            <div class="account-dropdown__footer">
                                                <a  onclick="preventBack()"  href="Hack.controller.Adminlogout">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
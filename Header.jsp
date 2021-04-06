<%@page import="java.sql.Connection"%>
<%@page import="web.shopping.DataBaseManagement"%>
<!DOCTYPE html>
<!--
        ustora by freshdesignweb.com
        Twitter: https://twitter.com/freshdesignweb
        URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MANO website</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
        <link rel=stylesheet href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/search.css">
        <link rel="stylesheet" href="css/search.css">
        <link rel=stylesheet href=css/pro.css>
        <link rel=stylesheet href=css/mobile.css>
        <link rel=stylesheet href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="cart.css">
        <link rel="stylesheet" href="signing.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="tables.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/search.css">
        <link rel="stylesheet" href="css/search.css">
        <link rel=stylesheet href=css/pro.css>
        <link rel=stylesheet href=css/mobile.css>
        <link rel=stylesheet href=css/tables.css>
    </head>
    <body>
        <%
            String active = request.getParameter("action");
            String log = "out";
            HttpSession sessions = request.getSession(true);
            String checkOutIN = request.getParameter("check");
            if (checkOutIN != null && !checkOutIN.equals("")) {
                if (checkOutIN.equals("in")) {
                    sessions.setAttribute("logInFlag", "true");
                    log = "in";
                }
            } else {
                sessions.setAttribute("logInFlag", "false");
                sessions.setAttribute("userName", "0");
                sessions.setAttribute("customer_id", "0");
            }

            String logInFlag = "";
            String username = "";
            String customer_id = "";
            String url = "";
            username = (String) sessions.getAttribute("userName");
            logInFlag = (String) sessions.getAttribute("logInFlag");
            customer_id = (String) sessions.getAttribute("customer_id");
            System.out.println(username);
            System.out.println(logInFlag);
            System.out.println(customer_id);
            if (logInFlag.equals("true")) {
                ServletContext servletContext = this.getServletContext();
                Connection c = (Connection) servletContext.getAttribute("getConnection");
                url = DataBaseManagement.getImageURL(c, username);
            }
        %>

        <div class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="user-menu">
                            <ul>
                                <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                                <li><a href="cart.html"><i class="fa fa-user"></i> My Cart</a></li>
                                <li><a href="checkout.html"><i class="fa fa-user"></i> Checkout</a></li>
                                <li><a href=<%out.println("/ShoppingWeb/SiginInPage.jsp?fromheader=in");%><i class="fa fa-user"></i><%if (logInFlag != null && logInFlag.equals("true")) {%> Logout<%} else {%>Login<%  ;
                                    }%></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="header-right">
                            <ul class="list-unstyled list-inline">
                                <li class="dropdown dropdown-small">
                                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key"></span><%if (logInFlag != null && logInFlag.equals("true")) {%><img src=<%=url%> style="width:30px;height:30px;"><%}%><span class="value">
                                            <%if (logInFlag != null && logInFlag.equals("true")) {%><%=username%><%}%></span></a>
                                    <ul class="dropdown-menu">%
                                        <!--                                    <li><a href="#">USD</a></li>
                                                                            <li><a href="#">INR</a></li>
                                                                            <li><a href="#">GBP</a></li>-->
                                    </ul>
                                </li>

                                <li class="dropdown dropdown-small">
                                    <!--                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span></a>-->
                                    <ul class="dropdown-menu">
                                        <!--                                    <li><a href="#">English</a></li>
                                                                            <li><a href="#">French</a></li>
                                                                            <li><a href="#">German</a></li>-->
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End header area -->

        <div class="site-branding-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="logo">
                            <h1><a href="./"><img src="https://i.ibb.co/sVFR3zK/webName.jpg" style="width:250px;height:200px;"></a></h1>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="shopping-item">
                            <a href="cart.html">Cart - <span class="cart-amunt">$0</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">0</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End site branding area -->

        <div class="mainmenu-area">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div> 
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav" id="demo">

                            <li><a href="index.html?action=home&check=in" <%if (active == null || active.equals("home")) {%>style="background-color:#5a88ca; color: white"<%}%>class="links">Home</a></li>
                            <li><a href="Mobiles.jsp?action=mobile" <%if (active != null && active.equals("mobile")) {%>style="background-color:#5a88ca; color: white"<%}%>class="links">Mobiles</a></li>

                            <li><a href="LaptopsPage?action=laptop" <%if (active != null && active.equals("laptop")) {%>style="background-color:#5a88ca; color: white"<%}%>class="links">Laptops</a></li>
                            <li><a href="SingleProductPage.jsp?action=single" <%if (active != null && active.equals("single")) {%>style="background-color:#5a88ca; color: white"<%}%> class="links">Single product</a></li>
                            <li><a href="SearchPage?action=search" <%if (active != null && active.equals("search")) {%>style="background-color:5a88ca; color: white"<%}%> class="links">Search</a></li>
                            <li><a href="cart.html?action=cart" <%if (active != null && active.equals("cart")) {%>style="background-color:5a88ca; color: white"<%}%>class="links">Cart</a></li>
                            <li><a href=<%out.println("/ShoppingWeb/ChekOutPage.jsp?action=checkout&check=" + log);%><%if (active != null && active.equals("checkout")) {%>style="background-color:#5a88ca; color: white"<%}%>class="links">Checkout</a></li>
                            <li><a href="#?action=about" <%if (active != null && active.equals("about")) {%>style="background-color:#5a88ca; color: white"<%}%>class="links">About us</a></li>
                        </ul>
                    </div>  
                </div>
            </div>
        </div> <!-- End mainmenu area -->


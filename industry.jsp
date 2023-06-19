<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
   <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Industry-Register</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
           .dropbtn {
  background-color: #009966;
  color: white;
  padding: 11px;
  font-size: 16px;
  border: none;
  cursor: pointer;
  margin-left: 60px;
  height: 48px;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.custom-select {
  margin-left: 330px;
  margin-top: 3px;
  font-family: Arial;
  height: 40px;
}

.custom-select select {
  border: 0;
   color: #009966;
   background: transparent;
   font-size: 16px;
   font-weight: bold;
   
   width: 338px;
   *width: 350px;
   *background: #58B14C;
   -webkit-appearance: none;
}


.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
    </style>
</head>

<body>
    <!-- Page Preloder -->
      
      <header class="header-section" style=" margin-top: 0px; background-color: whitesmoke;" >
        <div class="header-top" style=" border-bottom: none; ">
            <div class="container" style=" border-bottom: none  ">
                <div class="ht-left">
                    <div  class="mail-service" style="font-size: 20px;">
                      <a href="index.jsp">
                        <img  src="img/h0.JPG" alt="" style=" margin-top: 3px; padding-bottom: -40px; height: 60px; width: 200px; ">
                    </a>
                    </div>
                    <div class="phone-service" style=" margin-left: 100px;">
                       
                        <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

                      <form action="search.jsp" method="POST" >
<input name="search" type="text" placeholder="What do you need?" style=" color: black; margin-left: -3.5px; width: 500px; margin-top: 13px;height: 48px; font-size: 19px; opacity: 10;" >
                        <button  type="submit" style="font-size: 17px; color: #ffffff; margin-left: -4px;border: 1px solid #009966;background: #009966;padding: 9.5px 12px 9.5px;cursor: pointer;"><i class="fa fa-search"></i></button>
</form>
                    </div>
                    
                </div>
              <% 
                String uname = (String)session.getAttribute("urname");
                String username = "";
                String redirect = "myprofile.jsp?+";
                String redirect2 = "mycart.jsp?+";
                String redirect3= "Signout.jsp";
                String out1 = "SIGNOUT"; 
                int flag=0;
                if(uname==null){
                    username="LOGIN";
                    redirect = "login.jsp";
                    redirect2 = "login.jsp"; out1="SIGNUP"; redirect3="register.html";
                    flag=0;
                }else{
                    username = uname;
                    redirect = redirect.concat(username); 
                    redirect2 = redirect2.concat(username); flag=1;
                }
                    %>
                    <div class="ht-right" style=" margin-left: -60px;">
                        <div style=" margin-top: -5px;">
                        
                        
                        <a href="<%=redirect%>" class="login-panel"><i class="fa fa-user fa-2x" ></i><%=username%></a>
                        </div>
                        <div style="margin-top: 70px; margin-left: 200px;">
                            <a   style=" font-size:12px; color: #009966; margin-left: -73px; margin-top: -10px;" href="signout.jsp?+<%=out1%>"><%=out1%></a>
                        </div>
                        <div style=" margin-left: 220px; margin-top: -142px;">
                            <a style=" margin-left: 0px;" href="<%=redirect2%>" class="cart"><i class=" fa fa-shopping-cart fa-2x"></i>Cart</a>
                        </div>
                  
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                   
                    <div class="col-lg-7 col-md-7">
                        
                    </div>
                    <div class="col-lg-3 text-right col-md-3">
                        <ul class="nav-right">
                           
                           
                                </div>
                          
                    </div>
                </div>
            </div>
       
        <div class="nav-item" style=" ">
            <div class="container">
                <div class="nav-depart" style=" height: 50px;">
                    <div class="depart-btn" style=" height: 53.5px;">
                        <i class="fa fa-list"></i>
                        <span>All Categories</span>
                        <ul class="depart-hover">
                            <li><a href="search2.jsp?+e-waste">E-waste</a></li>
                            <li><a href="search2.jsp?+clothing">Clothing</a></li>
                            <li><a href="search2.jsp?+plastics">Plastics</a></li>
                            <li><a href="search2.jsp?+metals">Metals</a></li>
                            <li><a href="search2.jsp?+paper">Paper</a></li>
                            <li><a href="search2.jsp?+organic">Organic</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu">
                     <ul style=" height: 53.5px;">
                       
                        <li><a href="buy.jsp">Buy</a></li>
                        <li><a href="sell.jsp">Sell</a></li>
                        <li><a href="contact.jsp">About us</a></li>
                        <li><a href="#">Join Us</a>
                            <ul class="dropdown">
                                <li><a href="vendor.jsp">Junk Vendor</a></li>
                                <li><a href="truck1.jsp">Truck Service</a></li>
                                <li><a href="register.html">Consumer</a></li>
                                <li><a href="sell.jsp">Supplier</a></li>
                                
                                                          </ul>
                        </li>
                        
                        <li><a href="rate.html">Rate Card</a></li>
                        
                        
                    </ul>
                    
                    <i class=" fa fa-map-marker" style=" text-align:left; font-size: 35px; margin-left: 70px; padding-top:6px; color: white;" > </i>
                    <p style=" color:white; margin-left:6px; margin-top: 2px; font-size: 11px;   " >Deliver to</p>
                    <p style=" color: white; margin-top: 13px; margin-left: -47px; font-size: 13px;"><b>Pune</b></p>
                    
                </nav>
              
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Register</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad"  style=" margin-left: 380px;">
        <div class="container" > 
            <div class="row" >
                <div class="col-lg-6 offset-lg-3" style=" margin-top: -60px; background-color: whitesmoke;   " >
                    <div class="register-form" style=" ">
                        <h2 style=" color: #009966;"> <i class=" fa fa-users"></i>  SIGN UP  </h2>
                        <form action="signup3.jsp" method="POST">
                             <div class="group-input">
                                <label for="name">Full name *</label>
                                <input type="text" name="name" id="name" style=" width: 300px;">
                                <label for="desig" style=" margin-left: 330px; margin-top: -86px;">Designation*</label>
                                
                                <input type="text" name="designation" id="desig" style=" width: 228px;margin-left: 330px; margin-top: 0px; ">
                            </div>
                            <div class="group-input">
                                <label for="indust">Industry/Organization name*</label>
                                <input type="text" name="company" id="indust" style=" width: 300px;">
                                <label for="desig" style=" margin-left: 330px; margin-top: -86px;">Sector*</label>
                                <div class="" style="width:100px; margin-left: 330px; ">
                                    <select name="sector" style=" height: 30px; border: 1px solid black; color:black; background-color: #ddd; ">
                                        <option value="select">Select</option>
                                        <option value="agri">Agriculture</option>
                                        <option value="paper">Paper</option>
                                         <option value="food">Food</option>
                                          <option value="recycle">Recycling</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="group-input">
                                <label for="email">Official E-mail *</label>
                                <input name="email" type="email" id="email" placeholder="john@example.com"  style=" width: 300px;">
                                <label for="username"  style=" margin-left: 330px; margin-top: -86px;">Username*</label>
                                <input name="uname" type="text" placeholder="" id="username" style=" width: 228px; margin-left: 330px; margin-top: 0px;">
                            </div>
                            <br>
                             <div class="group-input">
                                <label for="phone">Phone number *</label>
                                <input name="phone" type="tel" id="phone" required placeholder="123-45-678-90"  style=" width: 300px; ">
                                <label for= "ngo" style=" margin-left: 332px; margin-top: -86px;">CTI Number*</label>
                                <input style=" margin-left: 332px; width: 225px;" name="CTIN" type="text" id="CTIN" >
                                
                                                                 
                            </div>
                            <div class="group-input">
                                <label for="add">Address line 1 *</label>
                                <input name="address1" type="text" id="add" >
                                
                            </div>
                            <div class="group-input">
                            <label for="add2">Address line 2 *</label>
                            <input name="address2" type="text" id="add2" >
                            </div>
                            <div class="group-input"  style=" width: 250px;">
                            <label for="city">City *</label>
                            <input name="city" type="text" id="city" >
                            <label for="pincode" style=" margin-left: 302px; width: 320px; margin-top:-84px;">Pin-code *</label>
                            <input style=" width: 250px; margin-left: 300px;" name="pincode" type="text" id="pincode" >
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input name="psw" type="password" id="pass">
                            </div>
                           
                            <button type="submit" class="site-btn register-btn" style=" background-color:  #009966; border-color:#009966;">REGISTER</button>
                        </form>
                        <div class="switch-login">
                            <a href="./login.jsp" class="or-login">Or Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
    
    <!-- Partner Logo Section Begin -->
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Logo Section End -->

    
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left" style=" ">
                        <div class="footer-logo" >
                            <a href="#"><img src="img/h0.JPG" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: MIT-ADT University<br>RajbaugCampus<br>Loni Kalbhor, Pune-412201</li>
                            <li>Phone: +91-902134567</li>
                            <li>Email: thegreen-crew@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Support</h5>
                        <ul>
                            <li><a href="#">FAQ's</a></li>
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">Help</a></li>
                                                 </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>Services</h5>
                        <ul>
                            <li><a href="#">Scrap pick-up</a></li>
                            <li><a href="#">Tie-ups</a></li>
                            <li><a href="#">Our alliances</a></li>
  
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>Company</h5>
                        <ul>
                            <li><a href="contact.jsp">About Us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">How we work</a></li>
  
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>Make money</h5>
                        <ul>
                            <li><a href="#">Sell on JunkMart</a></li>
                            <li><a href="#">Sell your services</a></li>
                            <li><a href="#">Become an Affiliate</a></li>
  
                        </ul>
                    </div>
                </div>
                <div class="footer-widget" style=" position: absolute; left: 58.1%; margin-top: 320px;   ">
                    <ul>
                        <li><a href="#">Privacy Policy | Terms and Conditions</a></li>
                    </ul>
                </div>
                <div class="col-lg-4" style=" margin-left: 380px; margin-top: 0px;">
                    <div class="newslatter-item">
                        <h5>Join Our Newsletter Now</h5>
                        
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Enter Your Mail">
                            <button type="button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | JunkMart
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
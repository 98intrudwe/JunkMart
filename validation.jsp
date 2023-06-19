
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
    <title>Fashi | Template</title>

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
               
                <div class="ht-right">
                     <a href="login.jsp" class="login-panel"><i class="fa fa-user fa-2x" ></i>Login</a>
                     <a href="#" class="cart"><i class=" fa fa-shopping-cart fa-2x"></i>Cart</a>
                  
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
                        <span>Login</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <!-- Register Section Begin -->
    <%
        String s1 = (String)request.getParameter("username");
        String s2 = (String)request.getParameter("pass");
        
         try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/junkmart?autoReconnect=true&useSSL=false","root","kkn@MSPL786");
                       System.out.print("Connected");
            //Statement st=(Statement) con.createStatement();
            Statement ps=(Statement)con.createStatement();
             ResultSet rs=ps.executeQuery("select username,password from users;") ;
             int flag = 0;
             String u1="";
             String p1 = "";
             while(rs.next()){
                 u1 = rs.getString("username");
                 
               p1 = rs.getString("password");
                 if(s1.equalsIgnoreCase("")==true || s2.equalsIgnoreCase("")==true){
                     flag=4; break;
                 }else if(s1.equalsIgnoreCase(u1)==true && s2.equalsIgnoreCase(p1)==true){
                         flag=1;
                         break;
                     }else if(s2.equalsIgnoreCase(p1)==false && s1.equalsIgnoreCase(u1)==true){
                         
                     flag=2;
                   break;
                     }else if(s1.equalsIgnoreCase(u1)==false && s2.equalsIgnoreCase(p1)==false){
                     flag=3;
                     
                 }
                 }
             if(flag==1){
                 String redirect = "index.jsp?+";
                 String redirect2=redirect.concat(u1);
                 session.setAttribute("urname", u1);
                 response.sendRedirect(redirect2);
                 out.println("<script>");out.println("alert");
                  out.print("('Sucessfully logged In')");
                  out.println("</script>");
             }else if(flag==2){
                 out.println("<script>");out.println("alert");
                  out.print("('Incorrect password. Please try again')");
                  out.println("</script>");
                  
                     
                     
             }else if(flag==3){
       //          Response.Write("<script language='javascript'>window.alert('Username and Password not found. Please Register');window.location='register.html';</script>");
       

                  response.sendRedirect("register.html");
                  
                  
                 // RequestDispatcher rd = request.getRequestDispatcher("signup.html");
                   //  rd.include(request, response);
             }else if(flag==4){
                  out.println("<script>");out.println("alert");
                  out.print("('Please fill all the required fields')");
                  out.println("</script>");
             }
              rs.close();
             ps.close();
             con.close();
             }
            
        
       
                    
            catch(Exception e){
                System.out.println(e);
            }
            
            %>
            
             <div class="register-login-section spad" style=" margin-top: -40px; margin-left: 380px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Login</h2>
                        <form action="sign.jsp" method="POST">
                            <div class="group-input">
                                <label for="username">Username or email address *</label>
                                <input type="text" id="username" name="username">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="pass" name="pass">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    <label for="save-pass">
                                        Save Password
                                        <input type="checkbox" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="#" class="forget-pass">Forgot your Password</a>
                                </div>
                            </div>
                            <button type="submit" class="site-btn login-btn" style=" background-color:  #009966; border-color:#009966;">Sign In</button>
                        </form>
                        <div class="switch-login">
                            <a href="./register.html" class="or-login">Or Create An Account</a>
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
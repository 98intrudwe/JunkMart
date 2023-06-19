<%-- 
    Document   : vendor
    Created on : 27 Jul, 2020, 2:54:23 PM
    Author     : Kaizen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">

<head>
   <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Truck Registration</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
 
<!-- Include the plugin's CSS and JS: -->
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css"/>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<!-- Include the plugin's CSS and JS: -->
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css"/>
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
#exp:before{
    content: "Kilograms";
    color:red;
    font-weight:bold;
}
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}

#b1{
    font-size: 26px;
    width: 350px;
    padding: 5px;
    color: white;
    background-color: #333333;
    border:   #000000 ;
    position: absolute; left: 85%; top: 1210%;
}
#b1:hover{
    background-color:#009966;
    border: #009966 thick outset;
}
#b2:hover{
    background-color:#009966;
    border: #009966 thick outset;
}
#b2{
    font-size: 26px;
    color: white;width: 350px;
    padding: 6px;
    background-color: #333333;
    border:   #000000 ; position: absolute; left: -30%; top: 1210%;
}
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
                        <span>Registration-Local Vendor</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->
    <%
        int sed=0;
    
        String name = request.getParameter("name");
            String uname = request.getParameter("username");
            String psw = request.getParameter("password");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String vehicle  = request.getParameter("work");
            String pin = request.getParameter("pincode");
            String city = request.getParameter("city");
            String locality = request.getParameter("state");
            
            String add1 = request.getParameter("add1");
            String add2 = request.getParameter("add2");
            String hours = request.getParameter("hours");
           String exp = request.getParameter("experience");
           String wtype = request.getParameter("wtype");
           String a14 = request.getParameter("capacity");
           String cap =a14.concat("kg");
           if(vehicle.equalsIgnoreCase("yes")==true){
               sed=1;
           }else if(vehicle.equalsIgnoreCase("no")==true){
               sed=0;
           }
           
            System.out.print(sed);
            

      try{
          int s = 12345;
          s=sed;
          //sec = sec;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/junkmart?autoReconnect=true&useSSL=false", "root", "kkn@MSPL786");
            //out.println("Connected");
            String query1 = "select user_id from users;";
            PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                   int p=0;
                    ResultSet rs = st.executeQuery();
                    while(rs.next()){
                        
                        p = rs.getInt(1);
                    }
                    //out.print(p);
                    rs.close();
                    st.close();;
                    int i = p+1;
                    //out.print(i);
            String query = "insert into trucks values(?,?,?,?,?,?,?);";
            //String query1="select* from details;";
             st = (PreparedStatement)con.prepareStatement(query);
           System.out.print("done");
           st.setInt(1, i);
            st.setInt(2,sed);
            st.setString(3,pin);
            st.setString(4,hours);
            st.setString(5,exp);
            st.setString(6,wtype);
            st.setString(7,cap);
           
            
            
            
            
            int o= st.executeUpdate();
            System.out.print("done2");
             if(o>=1){
                System.out.println("Insert updated");
            }
             String query2 = "insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
              st = (PreparedStatement)con.prepareStatement(query2);
              st.setInt(1, i);
            st.setString(2,uname);
            st.setString(3,psw);
            st.setString(4,name);
            st.setInt(5, 2);
            st.setString(6,add1);
            st.setString(7,add2);
            st.setString(8,city);
            st.setString(9,"Maharashtra");
            st.setString(10,pin);
            st.setString(11,phone);
            st.setString(12,email);
            st.setString(13,"");
            st.setInt(14, 0);
            st.setInt(15, 0);
            st.setString(16,"");
            st.setString(17,"");
            st.setInt(18,-1);
             int u= st.executeUpdate();
            System.out.print("done3");
             if(u>=1){
                System.out.println("Insert updated");
            }
            
       st.close();
       con.close(); 
       }

    catch(Exception r){
    System.out.println(r);
}
     
        
        
        %>
    <!-- Register Section Begin -->
    <br> <h2 style=" color: #009966; margin-left: 450px;"><b>Registered Successfully</b> </h2><br>
    <div class="register-login-section spad"  style=" margin-left: 300px; width: 80%; ">
        <div class="container" style=" " > 
            <div class="row" >
                <div class="col-lg-6 offset-lg-3" style=" margin-top: -60px; background-color: whitesmoke; width: 60%; height: 800px;   " >
                    <div class="register-form" style=" ">
                        <br>
                       
                             <div class="group-input">
                                <label for="name">Full name *</label>
                                <input type="text" name="name" id="name" style=" width: 300px; margin-left: 270px;" placeholder="<%=name%>" readonly="readonly">
                                
                            </div>
                            
                          
                            <br>
                            <div class="group-input">
                                <label for="email">E-mail *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 290px; " placeholder="<%=email%>"readonly="readonly" >
                                <br><label for="username"  style=" margin-left: 0px; margin-top: 20px;">Username*</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 270px; " placeholder="<%=uname%>"readonly="readonly" >  
                            </div>
                            <br>
                             <div class="group-input">
                                <label for="phone">Phone number *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 238px; " placeholder="<%=phone%>"readonly="readonly" > 
                              <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Own a transport Vehicle? *</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 140px; " placeholder="<%=vehicle%>"readonly="readonly" >
                                
                                                                 
                            </div>
                            <div class="group-input">
                                <br><label for="phone">Address line 1 *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 238px; " placeholder="<%=add1%>"readonly="readonly" > 
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Address line 2*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 240px; " placeholder="<%=add2%>"readonly="readonly" >
                                
                                                                 
                            </div>
                            <div class="group-input">
                                <br><label for="phone">City *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 305px; " placeholder="<%=city%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Locality*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 282px; " placeholder="<%=locality%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Pin-code*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 275px; " placeholder="<%=pin%>"readonly="readonly" >
                               
                               <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Max Capacity*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 240px; " placeholder="<%=cap%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Experience*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 260px; " placeholder="<%=exp%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Servicable hours*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 220px; " placeholder="<%=hours%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Type of waste collected*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 175px; " placeholder="<%=wtype%>"readonly="readonly" >
                                 <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Password*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 265px; " placeholder="<%=psw%>"readonly="readonly" >
                                
                                                                 
                            </div>
                               <br>
                           
                               <br>
                               <button  type="submit"   class="site-btn register-btn" style=" background-color:  #009966; border-color:#009966; margin-left: 245px;"><a href="login.jsp" style=" color: white;">LOGIN</a></button>
                       
                               <br>
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
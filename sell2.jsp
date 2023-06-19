<%-- 
    Document   : sell
    Created on : 29 Jul, 2020, 3:48:51 PM
    Author     : Kaizen
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sell Page</title>
       <head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <link rel="stylesheet" href="/resources/demos/style.css">
     <link rel="stylesheet" href="css/cart.css" type="text/css">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
* {
    margin: 0;
    padding: 0
}

html {
    height: 100%
}

p {
    color: grey
}

#heading {
    text-transform: uppercase;
    color: #673AB7;
    font-weight: normal
}

#msform {
    text-align: center;
    position: relative;
    margin-top: 20px
}

#msform fieldset {
    background: white;
    border: 0 none;
    border-radius: 0.5rem;
    box-sizing: border-box;
    width: 100%;
    margin: 0;
    padding-bottom: 20px;
    position: relative
}

.form-card {
    text-align: left
}

#msform fieldset:not(:first-of-type) {
    display: none
}

#msform input,
#msform textarea {
    padding: 8px 15px 8px 15px;
    border: 1px solid #ccc;
    border-radius: 0px;
    margin-bottom: 25px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    font-family: montserrat;
    color: #2C3E50;
    background-color: #ECEFF1;
    font-size: 16px;
    letter-spacing: 1px
}

#msform input:focus,
#msform textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #673AB7;
    outline-width: 0
}

#msform .action-button {
    width: 100px;
    background: #673AB7;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 0px 10px 5px;
    float: right
}

#msform .action-button:hover,
#msform .action-button:focus {
    background-color: #311B92
}

#msform .action-button-previous {
    width: 100px;
    background: #616161;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px 10px 0px;
    float: right
}

#msform .action-button-previous:hover,
#msform .action-button-previous:focus {
    background-color: #000000
}

.card {
    z-index: 0;
    border: none;
    position: relative
}

.fs-title {
    font-size: 25px;
    color: #009966;
    margin-bottom: 15px;
    font-weight: normal;
    text-align: left
}

.purple-text {
    color: #009966;
    font-weight: normal
}

.steps {
    font-size: 25px;
    color: gray;
    margin-bottom: 10px;
    font-weight: normal;
    text-align: right
}

.fieldlabels {
    color: gray;
    text-align: left
}

#progressbar {
    margin-bottom: 30px;
    overflow: hidden;
    color: lightgrey
}

#progressbar .active {
    color: #009966;
}

#progressbar li {
    list-style-type: none;
    font-size: 15px;
    width: 25%;
    float: left;
    position: relative;
    font-weight: 400
}

#progressbar #account:before {
    font-family: FontAwesome;
    content: "\f007"
}

#progressbar #personal:before {
    font-family: FontAwesome;
    content: "\f1f8"
}

#progressbar #payment:before {
    font-family: FontAwesome;
    content: "\f030"
}

#progressbar #confirm:before {
    font-family: FontAwesome;
    content: "\f00c"
}

#progressbar li:before {
    width: 50px;
    height: 50px;
    line-height: 45px;
    display: block;
    font-size: 20px;
    color: #ffffff;
    background: lightgray;
    border-radius: 50%;
    margin: 0 auto 10px auto;
    padding: 2px
}

#progressbar li:after {
    content: '';
    width: 100%;
    height: 2px;
    background: lightgray;
    position: absolute;
    left: 0;
    top: 25px;
    z-index: -1
}

#progressbar li.active:before,
#progressbar li.active:after {
    background: #009966;
}

.progress {
    height: 20px
}

.progress-bar {
    background-color: #009966;
}

.fit-image {
    width: 100%;
    object-fit: cover
}
.select-css {
	display: block;
	font-size: 14px;
	font-family: sans-serif;
	font-weight: 700;
	color: #009966;
	line-height: 1.3;
	padding: .6em 1.4em .5em .8em;
	width: 100%;
	max-width: 100%;
	box-sizing: border-box;
	margin: 0;
	border: 1px solid #aaa;
	box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
	border-radius: .5em;
	-moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
	background-color: #fff;
	background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'),
	  linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
	background-repeat: no-repeat, repeat;
	background-position: right .7em top 50%, 0 0;
	background-size: .65em auto, 100%;
}
.select-css::-ms-expand {
	display: none;
}
.select-css:hover {
	border-color: #888;
}
.select-css:focus {
	border-color: #aaa;
	box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
	box-shadow: 0 0 0 3px -moz-mac-focusring;
	color: #222;
	outline: none;
}
.select-css option {
	font-weight:normal;
}
    </style>
</head>

<body>
    <!-- Page Preloder -->
    
    <!-- Header Section Begin -->
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
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Sell</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <%
         int sed=0;
         String name = request.getParameter("company");
         
         String email= request.getParameter("email");
         String phone = request.getParameter("phone");
         String city = request.getParameter("city");
         String pincode = request.getParameter("pincode");
         String state = request.getParameter("state");
         String password = request.getParameter("password");
         String add1 = request.getParameter("add1");
         String add2 = request.getParameter("add2");
         String wtype = request.getParameter("wtype");
         String des = request.getParameter("des");
         String quantity = request.getParameter("quantity");
         String units= request.getParameter("units");
         String pname = request.getParameter("pname");
         String source = request.getParameter("source");
         String pic = request.getParameter("pic");
         String uname = request.getParameter("uname");
         String sector= request.getParameter("sector");
         String CTIN= request.getParameter("CTIN");
         String ig ="img/products/";
         String img = ig.concat(pic);
          int id=0;
         float rate=0;
         if(wtype.equalsIgnoreCase("select")==true){
             id=0;
             rate=0;
         }else if(wtype.equalsIgnoreCase("Plastics")==true){
             rate=25; id=1;
         }else if(wtype.equalsIgnoreCase("Metals")==true){
             rate=35; id=2;
         }else if(wtype.equalsIgnoreCase("E-waste")==true){
             rate=55; id=3;
         }else if(wtype.equalsIgnoreCase("Organic Waste")==true){
             rate=40; id=4;
         }else if(wtype.equalsIgnoreCase("Paper")==true){
             rate = 15; id=5;
         }
         if(sector.equalsIgnoreCase("select")==true){
               sed=0;
           }else if(sector.equalsIgnoreCase("agri")==true){
               sed=1;
           }else if(sector.equalsIgnoreCase("paper")==true){
               sed=2;
           }else if(sector.equalsIgnoreCase("food")==true){
               sed=3;
           }else if(sector.equalsIgnoreCase("recyle")==true){
               sed=4;
           }
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
            String query = "insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
            //String query1="select* from details;";
             st = (PreparedStatement)con.prepareStatement(query);
           System.out.print("done");
           st.setInt(1, i);
            st.setString(2,uname);
            st.setString(3,password);
            st.setString(4,name);
            st.setInt(5, 1);
            st.setString(6,add1);
            st.setString(7,add2);
            st.setString(8,city);
            st.setString(9,state);
            st.setString(10,pincode);
            st.setString(11,phone);
            st.setString(12,email);
            st.setString(13,CTIN);
            st.setInt(14, sed);
            st.setInt(15, 0);
            st.setString(16,name);
            st.setString(17,"");
            st.setInt(18,0);
            
            
            
            int o= st.executeUpdate();
            System.out.print("done2");
             if(o>=1){
                System.out.println("Insert updated");
            }
             String query3 = "select product_id from products;"; 
             st = (PreparedStatement) con.prepareStatement(query3);
                    //ResultSet rs = st.executeQuery(query);
                   int p1=0;
                  rs = st.executeQuery();
                    while(rs.next()){
                        
                        p1 = rs.getInt(1);
                    }
                    //out.print(p);
                    rs.close();
                    st.close();;
                    int l = p1+1; 
                   
      String query2 = "insert into products values(?,?,?,?,?,?,?,?,?,?,?,?);";
      st = (PreparedStatement) con.prepareStatement(query2);
      st.setInt(1, l);
      st.setInt(2, i);
      st.setInt(3, id);
      st.setString(4,pname);
      st.setString(5,des);
      st.setString(6,wtype);
      st.setString(7,pname);
      st.setString(8,quantity);
      st.setString(9,units);
      st.setString(10,img);
      st.setFloat(11, rate);
      st.setString(12, source);
      int k= st.executeUpdate();
            System.out.print("done3");
             if(k>=1){
                System.out.println("Insert updated");
            }
             rs.close(); st.close(); con.close();
      
       }

    catch(Exception r){
    System.out.println(r);
}





         
         %>
    
    <br> <h2 style=" color: #009966; margin-left: 250px;"><b>Product Seller Request Registered Successfully</b> </h2><br>
    <div class="register-login-section spad"  style=" margin-left: 300px; width: 80%; ">
        <div class="container" style=" " > 
            <div class="row" >
                <div class="col-lg-6 offset-lg-3" style=" margin-top: -60px; background-color: whitesmoke; width: 60%; height: 900px;   " >
                    <div class="register-form" style=" ">
                        <br>
                       
                             <div class="group-input">
                                <label for="name">Full name/Company name *</label>
                                <input type="text" name="name" id="name" style=" width: 300px; margin-left: 142px;" placeholder="<%=name%>" readonly="readonly">
                                
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
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 228px; " placeholder="<%=phone%>"readonly="readonly" > 
                              
                                                                 
                            </div>
                            <div class="group-input">
                                <br><label for="phone">Address line 1 *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 231px; " placeholder="<%=add1%>"readonly="readonly" > 
                                <br><br><label for="phone">Address line 2 *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 231px; " placeholder="<%=add2%>"readonly="readonly" > 
                                
                                                                 
                            </div>
                            <div class="group-input">
                                <br><label for="phone">City *</label>
                                <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 307px; " placeholder="<%=city%>"readonly="readonly" >
                               
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Pin-code*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 275px; " placeholder="<%=pincode%>"readonly="readonly" >
                               <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">State*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 302px; " placeholder="<%=state%>"readonly="readonly" >
                               <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Password*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 267px; " placeholder="<%=password%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Sector*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 290px; " placeholder="<%=sector%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">CTIN*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 300px; " placeholder="<%=CTIN%>"readonly="readonly" >
                               
                               <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Waste Type*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 252px; " placeholder="<%=wtype%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Product name*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 233px; " placeholder="<%=pname%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Description*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 250px; " placeholder="<%=des%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Quantity*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 271px; " placeholder="<%=quantity%>"readonly="readonly" >
                                 <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Unit*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 305px; " placeholder="<%=units%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Source*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 285px; " placeholder="<%=source%>"readonly="readonly" >
                                <br><label for= "ngo" style=" margin-left: 0px; margin-top: 20px;">Image address*</label>
                               <input type="text" name="designation" id="desig" style=" width: 300px; margin-top: 0px; margin-left: 225px; " placeholder="<%=pic%>"readonly="readonly" >
                                
                                                                 
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
    
    
    <script>
       $(document).ready(function(){

var current_fs, next_fs, previous_fs; //fieldsets
var opacity;
var current = 1;
var steps = $("fieldset").length;

setProgressBar(current);

$(".next").click(function(){

current_fs = $(this).parent();
next_fs = $(this).parent().next();

//Add Class Active
$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

//show the next fieldset
next_fs.show();
//hide the current fieldset with style
current_fs.animate({opacity: 0}, {
step: function(now) {
// for making fielset appear animation
opacity = 1 - now;

current_fs.css({
'display': 'none',
'position': 'relative'
});
next_fs.css({'opacity': opacity});
},
duration: 500
});
setProgressBar(++current);
});

$(".previous").click(function(){

current_fs = $(this).parent();
previous_fs = $(this).parent().prev();

//Remove class active
$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

//show the previous fieldset
previous_fs.show();

//hide the current fieldset with style
current_fs.animate({opacity: 0}, {
step: function(now) {
// for making fielset appear animation
opacity = 1 - now;

current_fs.css({
'display': 'none',
'position': 'relative'
});
previous_fs.css({'opacity': opacity});
},
duration: 500
});
setProgressBar(--current);
});

function setProgressBar(curStep){
var percent = parseFloat(100 / steps) * curStep;
percent = percent.toFixed();
$(".progress-bar")
.css("width",percent+"%")
}

$(".submit").click(function(){
return false;
})

}); 
        
        
        </script>
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
                            <li><a href="pickup.html">Scrap pick-up</a></li>
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

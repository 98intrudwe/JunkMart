<%@page import="com.mysql.jdbc.PreparedStatement"%>
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
    <title>Product Page</title>
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
.w3-bar-item w3-button:hover{
    background-color: #009966;
}
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
  margin-left: 3px;
  margin-top: -20px;
  list-style-type: none;
}
.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
.accordion {
  background-color: white;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 18px;
  transition: 0.4s;
}

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
* {box-sizing: border-box;}

.img-magnifier-container {
  position:relative;
}

.img-magnifier-glass {
  position: absolute;
  border: 3px solid #000;
  border-radius: 50%;
  cursor: none;
  /*Set the size of the magnifier glass:*/
  width: 60px;
  height: 60px;
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
                    <div class="breadcrumb-text product-more">
                        <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">Shop</a>
                        <span>Detail</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter" 
                     style=" border: 2px solid whitesmoke; width:20%; height: 55%; padding-bottom: 30px;">
                    <div class="filter-widget" style=" height: 50%; ">
                        <div style=" width: 100%;">
                        <h4 class="fw-title" style=" background-color: #009966;margin-left: -15px; margin-top: -40px; font-size: 24px;
	font-weight: 700; text-align: center; color: white; border-bottom: 1px solid #ddd;   padding: 8px; width:115%; ">
                            <b> Category</b></h4></div>
                        <div>
                        <div>
                            <button  class="accordion" style=" color: #009966; width: 100%;"><b>Plastics</b> <i style=" margin-left: 40px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="#">PET</a></li>
                            <li><a style=" color: #009966;" href="#">Polysterene</a></li>
                            <li><a style=" color: #009966;" href="#">HDPE</a></li>
                            <li><a  style=" color: #009966;" href="#">LDPE</a></li>             
            </ul>
        </div>
                        </div>
          <div>
                            <button  class="accordion" style=" color: #009966; width: 100%;"><b>Paper</b> 
                                <i style=" margin-left: 55px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="#">Old Newspapers</a></li>
                            <li><a style=" color: #009966;" href="#">Old Corrugated Containers</a></li>
                                         
            </ul>
        </div>
                        </div>
         <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 E-Waste</b> <i style=" margin-left: 31px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="#">Large Appliances</a></li>
                            <li><a style=" color: #009966;" href="#">Small Appliances</a></li>
                                         
            </ul>
        </div>
                        </div>
            <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 Glass</b> <i style=" margin-left: 58px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="#">Coloured glass</a></li>
                            <li><a style=" color: #009966;" href="#">Clear Glass</a></li>
                                         
            </ul>
        </div>
                        </div>  
               
            <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 Wood</b> <i style=" margin-left: 53px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="#">Sawdust</a></li>
                 <li><a style=" color: #009966;" href="#">Wood Cuttings</a></li>
                  <li><a style=" color: #009966;" href="#">Wood Shavings</a></li>                       
            </ul>
        </div>
                        </div>
           <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 Metal</b> <i style=" margin-left: 54px;" class="fa fa-plus "></i>  </button>
                 <div class="panel" style=" border: ">
            <ul style="  list-style-type: none; color: #009966;  ">
                <li ><a style=" color: #009966;"  href="#">Scrap Aluminium</a></li>
                 <li><a style=" color: #009966;" href="#">Scrap Brass</a></li>
                  <li><a style=" color: #009966;" href="#">Scrap Iron</a></li>                       
            </ul>
        </div>
                        </div> 
        </div>
         
        <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>

        
                    </div>
                    
                    
                    <div class="filter-widget">
                        <div style=" width: 100%; margin-top: -20px;">
                        <h4 class="fw-title" style=" background-color: #009966; margin-left: -15px; margin-top: -20px;  font-size: 24px;
	font-weight: 700; text-align: center; color: white; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd;padding: 8px; width:115%; ">
                            Price</h4></div>
                        <div class="filter-range-wrap" style=" margin-top: 20px;">
                            <div class="range-slider"  style=" color:  #009966;">
                                <div class="price-input" style=" color:  #009966; font-size: 15px;">
                                    <input type="text" id="minamount" placeholder="₹" >
                                    <input type="text" id="maxamount" placeholder="₹" style=" margin-left: 15px; width: 100px; font-size: 15px;" >
                                </div>
                                <div>
                                  
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="5" data-max="100" style=" background-color: whitesmoke; font-size: 18px;">
                                <div class="ui-slider-range ui-corner-all ui-widget-header" style=" color:  #009966;"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="font-size: 15px; "></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="font-size: 15px; "></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn" style=" background-color:#009966;">Filter</a>
                    </div>
                 </div>
     <script>
function magnify(imgID, zoom) {
  var img, glass, w, h, bw;
  img = document.getElementById(imgID);
  /*create magnifier glass:*/
  glass = document.createElement("DIV");
  glass.setAttribute("class", "img-magnifier-glass");
  /*insert magnifier glass:*/
  img.parentElement.insertBefore(glass, img);
  /*set background properties for the magnifier glass:*/
  glass.style.backgroundImage = "url('" + img.src + "')";
  glass.style.backgroundRepeat = "no-repeat";
  glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
  bw = 3;
  w = glass.offsetWidth / 2;
  h = glass.offsetHeight / 2;
  /*execute a function when someone moves the magnifier glass over the image:*/
  glass.addEventListener("mousemove", moveMagnifier);
  img.addEventListener("mousemove", moveMagnifier);
  /*and also for touch screens:*/
  glass.addEventListener("touchmove", moveMagnifier);
  img.addEventListener("touchmove", moveMagnifier);
  function moveMagnifier(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    x = pos.x;
    y = pos.y;
    /*prevent the magnifier glass from being positioned outside the image:*/
    if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
    if (x < w / zoom) {x = w / zoom;}
    if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
    if (y < h / zoom) {y = h / zoom;}
    /*set the position of the magnifier glass:*/
    glass.style.left = (x - w) + "px";
    glass.style.top = (y - h) + "px";
    /*display what the magnifier glass "sees":*/
    glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>
<%
    String p = (String)request.getQueryString();
                           
                            String p1 = p.substring(1);
                            //out.print(p1);  
     try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/junkmart?autoReconnect=true&useSSL=false", "root", "kkn@MSPL786");
                    //System.out.println("EXECUTE the query");
                    String query = "select * from products where product_id = ?; ";
                    //System.out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, p1);
                   int o=2;
                    ResultSet rs = st.executeQuery();
                    String sell=null;
                    String s1 = null;
                    while (rs.next()) {
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));

                   s1 = rs.getString("images");
                    request.setAttribute("s1", s1);
                    String id = rs.getString("product_id");
                    String s2 = rs.getString("product_category");
                    String s3 = rs.getString("product_name");
                    String s4 = rs.getString("product_description");
                    String s5 = rs.getString("Units");
                    String s6 = rs.getString("source");
                    sell = rs.getString("seller_id");
                    //session.setAttribute("sell",sell);
                    //request.setAttribute("sell", sell);
                    float f1 = rs.getFloat("price_rate");
    
    
    %>
<div style=" display: inline"> 
<div class="img-magnifier-container" style=" margin-left:  250px;">
  <img id="myimage" src="<%=s1%>" width="400" height="400">
  <div class="zoom-icon"  style=" position: absolute; margin-top: -44px; font-size: 35px;">
                                    <i class="fa fa-search-plus" style=" background: whitesmoke;"></i>
                                </div>
</div>
                

<script>
/* Initiate Magnify Function
with the id of the image, and the strength of the magnifier glass:*/
magnify("myimage", 2);
</script>
                

                    
                        <div class="col-lg-6" >
                            
                            
                            <div class="product-thumbs">
                                <div class="product-thumbs-track ps-slider owl-carousel">
                                    <div class="pt active" data-imgbigurl="images/Productline/Plastics/HDPE.jpg"><img
                                            src="images/Productline/Plastics/HDPE.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="images/Productline/Plastics/HDPE.jpg"><img
                                            src="images/Productline/Plastics/HDPE.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="images/Productline/Plastics/HDPE.jpg"><img
                                            src="images/Productline/Plastics/HDPE.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="images/Productline/Plastics/LDPE.png"><img
                                            src="images/Productline/Plastics/LDPE.png" alt=""></div>
                                </div>
                            </div>
                        </div>
<div class="col-lg-6" style=" margin-left:  650px; margin-top: -650px;">
                            <div class="product-details">
                                <div class="pd-title">
                                    <span><%=s2%></span>
                                    <h3 style=" font-size: 22px;"><%=s3%></h3>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt" style=" margin-left: -100px"></i></a>
                                </div>
                                <div class="pd-rating" style=" color: #009966;">
                                    <i class="fa fa-star" style=" color: #009966;"></i>
                                    <i class="fa fa-star" style=" color: #009966;"></i>
                                    <i class="fa fa-star" style=" color: #009966;"></i>
                                    <i class="fa fa-star" style=" color: #009966;"></i>
                                    <i class="fa fa-star-o" style=" color: #009966;"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    <p style=" font-size: 16px; width: 80%;">
                                        <%=s4%> 
                                        </p>
                                    <h4 style=" color: #009966;">₹35.00 <span>₹1 <%=f1%></span></h4>
                                </div>
                                <h6 style=" font-size: 20px;"><b>Quantity(<%=s5%>)</b></h6>
                                 <form action="addcart2.jsp?+<%=id%>" method="post">
                                <div class="quantity" style=" margin-top: 15px;">
                                    <input name="pid" id="pid" type="text" value="<%=id%>" disabled="true" style=" display: none;" />
                                    <div class="pro-qty" style=" align-content: center;">
                                        <input name="quantity" type="number" min="1" max="10"  value="1" style=" font-size: 20px; " >
                                        <%// String q = request.setAttribute("number", o);  %>
                                    </div>
                                    <button style=" background-color: #009966; border: none; color: white; width: 200px;"><b>Add To Cart</b></button>
                                </div>
                                </form>
                                        
                                <ul class="pd-tags" style=" margin-top: -30px;">
                                    <li><span>CATEGORIES</span>: <%=s2%></li>
                                    <li><span>SOURCE</span>: <%=s6%></li>
                                </ul>
                                 <%
                                        }rs.close();
                    st.close();
                   
                    String query1 = "select users.company_name,users.address_line1,users.address_line2,users.city,users.state,users.pincode,users.email,users.CTIN from users inner join products on users.user_id = products.seller_id;";
               st = (PreparedStatement) con.prepareStatement(query1);
              rs = st.executeQuery();
                    
                    while (rs.next()) {

                    rs.last();
                    String name = rs.getString("company_name");
                    String add1 = rs.getString("address_line1");
                    String add2 = rs.getString("address_line2");
                    String city = rs.getString("city");
                    String pincode = rs.getString("pincode");
                    String state = rs.getString("state");
                    String email= rs.getString("email");
                    String CTIN = rs.getString("CTIN");
                        
                   //out.println(sell);
               
                                        %>
                                <div class="pd-share" style=" margin-top: -30px">
                                    <div class="p-code">Sold by: <a href="#"><%=name%></a> </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                         

<div class="" style=" background-color: #009966;  width: 85%; margin-left: 233px; margin-top:34px; color: white; align-content: center; text-align: center; ">
    <button class="w3-bar-item w3-button" style=" border: 1px inset whitesmoke;   " onclick="openCity('London')"><b>DESCRIPTION</b></button>
    <button class="w3-bar-item w3-button" onclick="openCity('Paris')" style=" border-right: 1px inset whitesmoke; "><b>SELLER INFO</b></button>
    <button class="w3-bar-item w3-button" onclick="openCity('Tokyo')" style=" border-right: 1px inset whitesmoke; "><b>CUSTOMER REVIEW</b></button>
        </div>
                                    <div id="Paris" class="w3-container city" style=" height: 60%; margin-left: 235px; position: absolute; margin-top: 2px; background-color: whitesmoke; width: 77%; ">
    <br><h5><%=name%> PVT. LTD.</h5>
                                                <p><%=name%> Retail Private Ltd is committed to providing each customer with the highest standard of customer service.</p>
                                                   <ul style=" margin-left: 20px; font-size: 18px;">
                                                       <li><b>Seller Name:</b> <%=name%> </li>
                                                       <li ><b>Seller Address:</b> <p><%=add1%> <br> <%=add2%><br><%=city%><br><%=pincode%><br><%=state%> </p> </li>
                                                     <li> <b>CIN:</b> <%=CTIN%></li>
                                                     <li> <b>E-mail:</b> <%=email%></li>
                                                      <li> <b>Products sold:</b> Plastics, E-Waste, Paper</li>
                                                </ul>
                                                       <%    }rs.close();
                                                    %>
                                                <img src="<%=s1%>" alt="" width="250" height="250" style=" margin-left: 600px; margin-top: -190px">
</div>
       
  
<div id="London" class="w3-container city" style=" height: 60%; margin-left: 235px; position: absolute; margin-top: 2px; background-color: whitesmoke; width: 77%; ">
    <br> <h5>Description by the Seller</h5>
                                                <p>HDPE bootles used as milk containers before since 8 months and are no longer in use. Have 20 such bottles for sale in good condition and can be reused and recycled for various other applications <br>
                                                </p>
                                                <h5>Specification:</h5>
                                                <ul style=" margin-left: 20px; font-size: 18px;">
                                                    <li>Density: 63 kilogram/cubic meter</li>
                                                     <li>Volumer/bottle: 2 Liters</li>
                                                     <li>Specific heat(solid): 9 Kilo Joules/ Kg °C</li>
                                                     <li>Latent heat: 9 Kilo Joules/ Kg </li>
                                                     <li>Temprature of Crystallization: 119°C</li>
                                                </ul>
                                                <img src=<%=s1%> alt="" width="250" height="250" style=" margin-left: 600px; margin-top: -160px">
</div>


                                                <% st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }%>

<div id="Tokyo" class="w3-container city" style=" height: 60%; margin-left: 235px; position: absolute; margin-top: 2px; background-color: whitesmoke; width: 77%; ">
    <div class="customer-review-option" style=" margin-top: -30px; margin-left: 20px">
                                        <h4>2 Comments</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star-o" style=" color: #009966;"></i>
                                                    </div>
                                                    <h5>Brandon Kelley <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="img/product-single/avatar-2.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star" style=" color: #009966;"></i>
                                                        <i class="fa fa-star-o" style=" color: #009966;"></i>
                                                    </div>
                                                    <h5>Roy Banks <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="personal-rating">
                                            <h6>Your Rating</h6>
                                            <div class="rating">
                                                <i class="fa fa-star" style=" color: #009966;"></i>
                                                <i class="fa fa-star" style=" color: #009966;"></i>
                                                <i class="fa fa-star" style=" color: #009966;"></i>
                                                <i class="fa fa-star" style=" color: #009966;"></i>
                                                <i class="fa fa-star-o" style=" color: #009966;"></i>
                                            </div>
                                        </div>
                                        <div class="leave-comment" style=" display: block; width: 50%; margin-left: 400px; margin-top: -380px;">
                                            <h4>Leave A Comment</h4>
                                            <form action="#" class="comment-form">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Name">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Email">
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <textarea placeholder="Messages"></textarea>
                                                        <button type="submit" class="site-btn" style=" background-color: #009966; border: none;">Send message</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
</div>
<script>
function openCity(cityName) {
  var i;
  var x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  document.getElementById(cityName).style.display = "block";  
}
</script>


                    
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Related Products Section End -->
    <div class="related-products spad" style=" margin-top: 300px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/pbottle1.jpg" alt="">
                            <div class="sale">Sale</div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="products.jsp?+1001">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5>Wine Bottles</h5>
                            </a>
                            <div class="product-price" style=" color: #009966;">
                               ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/pbottle1.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="products.jsp?+1001">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5>Plastic Bags</h5>
                            </a>
                            <div class="product-price" style=" color: #009966;">
                                ₹13.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/toys.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="products.jsp?+1001">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Plastics</div>
                            <a href="#">
                                <h5>Plastic Toys</h5>
                            </a>
                            <div class="product-price" style=" color: #009966;">
                                ₹34.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/pbottle1.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="products.jsp?+1001">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5>WINE BOTTLES</h5>
                            </a>
                            <div class="product-price" style=" color: #009966;">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Related Products Section End -->

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

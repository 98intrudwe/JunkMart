<%-- 
    Document   : addcart
    Created on : 29 Jul, 2020, 2:38:23 AM
    Author     : Kaizen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
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
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
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
    <title>My Cart</title>

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

                        <input type="text" placeholder="What do you need?" style=" color: black; margin-left: -3.5px; width: 500px; margin-top: 13px;height: 48px; font-size: 19px; opacity: 10;" >
                        <button  type="button" style="font-size: 17px; color: #ffffff; margin-left: -4px;border: 1px solid #009966;background: #009966;padding: 9.5px 12px 9.5px;cursor: pointer;"><i class="fa fa-search"></i></button>
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
                                <li><a href="truck.html">Junk Vendor</a></li>
                                <li><a href="transport.htm;">Truck Service</a></li>
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
                        <span>My Cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <%
        String p = (String)request.getQueryString(); 
        String p1 = p.substring(1);
       String qe = (String)request.getParameter("q1"); 
       String pe = (String)request.getParameter("q2");
        //String username = (String)session.getAttribute("uname");
                           float sub2=0;
                           
                            String id = request.getParameter("id");
                           String quant = request.getParameter("quantity");
                            //out.println(quant); 
                            float total2=0; float y=0; int gid=0; int oid=0;
          try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/junkmart?autoReconnect=true&useSSL=false", "root", "kkn@MSPL786");
                    //System.out.println("EXECUTE the query");
                    
                    String newid = "select cart_item_id from cart_items;";
                    //System.out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(newid);
                    ResultSet rs = st.executeQuery();
                    int nid=0;
                    while(rs.next()){
                        nid=rs.getInt(1);
                    }  rs.close(); st.close();
                    gid=nid+1;
                    //out.println(nid);
                    String usid = "select user_id from users where username=?;";
                     st = (PreparedStatement) con.prepareStatement(usid);
                     st.setString(1, username);
                      rs = st.executeQuery();
                   oid =0;
                    while(rs.next()){
                        oid=rs.getInt(1);
                    } rs.close(); st.close();
                   
                   
                    String query = "select seller_id, price_rate from products where product_id = ?; ";
                    st = (PreparedStatement) con.prepareStatement(query); 
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, p1);
                   int o=2;
                   rs = st.executeQuery();
                   float rate=0;
                    int sell=0;
                    String s1 = null;
                    while (rs.next()) {
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));
                    sell = rs.getInt("seller_id");
                    rate = rs.getFloat("price_rate"); 
                    //session.setAttribute("sell",sell);
                    //request.setAttribute("sell", sell);
                    } 
                   
                    int xc=Integer.parseInt(qe);
                    float xf = xc*rate; 
                    String add = "insert into cart_items values(?,?,?,?,?,?,?,?);";
                    
rs.close(); st.close(); con.close();
}catch(Exception e){
 System.out.println(e);
}

        
        %>
     <div class="wrap cf">

  <div class="heading cf">
    <h1>My Cart</h1>
    <a href="buy.jsp?+<%=username%>" class="continue">Continue Shopping</a>
  </div>
 
  <div class="cart">
<!--    <ul class="tableHead">
      <li class="prodHeader">Product</li>
      <li>Quantity</li>
      <li>Total</li>
       <li>Remove</li>
    </ul>-->
    <ul class="cartWrap">
        
        
      
      
          <br><br> 
          <h2 style=" color: whitesmoke; padding: 5px; margin-left: 10px; background-color: #333333; width: 100%;"><b>Previously Added Items to the Cart</b></h2>
          
          <%
             
              int lid=0;
    
          
     if(flag==1){
              try{
                  int pt=0; int sid=0; int pquant=0;  float prate=0;
              
              Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/junkmart?autoReconnect=true&useSSL=false", "root", "kkn@MSPL786");
                    //System.out.println("EXECUTE the query");
                    String query = "select user_id from users where username = ?; ";
                    PreparedStatement  st = (PreparedStatement) con.prepareStatement(query);
                     st.setString(1, username);
                      ResultSet rs = st.executeQuery();
                   int usid=0; 
                    while(rs.next()){
                        usid=rs.getInt(1);
                    } rs.close(); st.close();
                   //out.println(usid);
                    //System.out.println("Executing the query");
                    //PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                   
                   int o=2; float g=o;  int d=4;
                    
                    String sell=null;
                    String s1 = null; int uid=0;
                    
                    String query4 = "select products.product_name,products.product_category,products.price_rate, products.images, products.Units, cart_items.quatntity, cart_items.cart_item_id, products.product_id, products.seller_id from products inner join cart_items "
                            + "on cart_items.product_id=products.product_id where cart_items.buyer_id=? and cart_items.flag=1";
                    st = (PreparedStatement) con.prepareStatement(query4);
                    st.setInt(1, usid);
                    rs = st.executeQuery();
                    float total1=0;
                    while(rs.next()){
                       
                        String pname= rs.getString(1);
                        String pcat = rs.getString(2);
                        prate = rs.getFloat(3);
                        String pimg = rs.getString(4);
                        String punit= rs.getString(5);
                        pquant = rs.getInt(6);
                        total1= pquant*prate;
                        lid= rs.getInt(7);
                        pt = rs.getInt(8);  
                        sid = rs.getInt(9);
                        g=g+total1;
                          d=d+1;
                    
              
              %>
      <li class="items odd">
        
    <div class="infoWrap"> 
        <div class="cartSection">
        <img src="<%=pimg%>" alt="" class="itemImg" />
          <p class="itemNumber">#QUE-007544-002</p>
          <h3><%=pname%>(<%=pcat%>)</h3>
        
          <input value="<%=pquant%>" id="q3" name="q3" style=" font-size: 14px; width: 80px;" type="number" disabled="true" min="1" max="5"  class="qty" placeholder="<%=punit%>"/> <p style=" font-size: 13px;"> x </p>   <p style=" margin-left: 5px; font-size: 13px;"> ₹ </p>
          <input value="<%=prate%>" id="q4" name="q4" style=" font-size: 12px; width: 50px;" type="number"   disabled="true" placeholder="<%=punit%>"/>
        
          <p class="stockStatus"> In Stock</p>
          
        </div>  
          
          
              <% total1= prate*pquant;
                  %>
        <div class="prodTotal cartSection">
         <p id="">₹</p><p id="<%=d%>"><%=total1%></p>
        </div>
              <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
        
        </div>
      </li>
        <%
          
          }rs.close();st.close();  y=g-2;
%>

    
      
      
<div style=" left: 400px;"  >
    <p style=" color: white; margin-left: 750px; margin-top: 20px;" id="tot1">Sub Total-I = ₹</p>
    <input type="number" style=" display: none; color: white; margin-left: 860px; margin-top: -41px;" value="<%=y%>" id="tot"/>
        </div>
      <%  sub2 = y +total2 ;  
            %>

<%
}catch(Exception e){
 System.out.println(e);
}
          
         

}else{

}


          %>
     
      <%
          
          %>
      
           
      
      <!--<li class="items even">Item 2</li>-->
 
    </ul>
  </div>
  
  <div class="promoCode"><label for="promo">Have A Promo Code?</label><input type="text" name="promo" placholder="Enter Code" />
  <a href="#" class="btn"></a></div>
  
  <div class="subtotal cf" style=" margin-top: -50px;">
    <ul>
        <script>
          
    function myFunction(){  
             var x=0; var y=0; var b = 0 ; var v=0; var t1=0; var t2=0; var s=0; var z=0;
               x = parseInt(document.getElementById("q1").value);
              y = parseFloat(document.getElementById("q2").value);
               b = parseFloat(document.getElementById("tot").value);
              z = x*y;
              v = b+z;
            
              document.getElementById("total").innerHTML = z;
              
               document.getElementById("sub1").innerHTML = v;
               //v.value=b+z;
           
              t1 = v*(8/100);
              document.getElementById("tax").innerHTML = t1;
              // system.out.println(b);
             
               s = v*(4/100);
              document.getElementById("scharge").innerHTML = s;
               t2 = t1+50+v+ s;
              document.getElementById("grand").innerHTML = t2;
               system.out.println(t);
          }
              </script> 
        
              <li class="totalRow"><span class="label">Subtotal ₹ </span><span id="subtotal" class="value" > <p id="sub1"><%=sub2%></p></span></li>
      
              <li class="totalRow"><span class="label">Shipping ₹</span><span class="value"><p>50.00</p></span></li>
      <% float sub3 = sub2 *8/100;   float sub5 = sub2 *4/100;
            float sub4 = sub3+50+sub2+sub5;%>
          <li class="totalRow"><span class="label">GST(8%)₹</span><span class="value"><p id="tax"><%=sub3%></p></span></li>
          <li class="totalRow"><span class="label">Service Charge(4%)₹</span><span class="value"><p id="scharge"><%=sub5%></p></span></li>
          <li class="totalRow final"><span class="label">Total ₹</span><span class="value"><p id="grand"><%=sub4%></p></span></li>
      <li class="totalRow"><a href="checkout.jsp?+<%=username%>" class="btn continue">Checkout</a></li>
    </ul>
  </div>
</div>
 
 
                     
   
   
                  
    <!-- Footer Section Begin -->
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
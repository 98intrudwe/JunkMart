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
      


 </style>
 <style type="text/css">
            
.pg-normal {
color: #000000;
font-size: 15px;
cursor: pointer;
background: #009966 !important;
padding: 2px 4px 2px 4px;
}

.pg-selected {
color: #fff;
font-size: 15px;
background: #333333;
padding: 2px 4px 2px 4px;
}

table.yui {
font-family:arial;
border-collapse:collapse;
border: solid 3px #009966;
font-size:small;
}

table.yui td {
padding: 5px;
border-right: solid 1px #009966;
}

table.yui .even {
background-color: #009966;
}

table.yui .odd {
background-color: #009966;
}

table.yui th {
border: 1px solid green;
padding: 5px;
height: auto;
background: #009966;
}

table.yui th a {
text-decoration: none;
text-align: center;
padding-right: 20px;

font-weight:bold;
white-space:nowrap;
}

table.yui tfoot td {
border-top: 1px solid #7f7f7f;
background-color:#009966;
}

table.yui thead td {
vertical-align:middle;
background-color:#009966;
border:none;
}

table.yui thead .tableHeader {
font-size:larger;
font-weight:bold;
}

table.yui thead .filter {
text-align:right;
}

table.yui tfoot {
background-color:#009966;
text-align:center;
}

table.yui .tablesorterPager {
padding: 10px 0 10px 0;
}

table.yui .tablesorterPager span {
padding: 0 5px 0 5px;
}

table.yui .tablesorterPager input.prev {
width: auto;
margin-right: 10px;
}

table.yui .tablesorterPager input.next {
width: auto;
margin-left: 10px;
}

table.yui .pagedisplay {
font-size:10pt; 
width: 30px;
border: 0px;
background-color: #009966;
text-align:center;
vertical-align:top;
}
        </style>
</head>

<body>
    <!-- Page Preloder -->
       <script type="text/javascript">

function Pager(tableName, itemsPerPage) {

this.tableName = tableName;

this.itemsPerPage = itemsPerPage;

this.currentPage = 1;

this.pages = 0;

this.inited = false;

this.showRecords = function(from, to) {

var rows = document.getElementById(tableName).rows;

// i starts from 1 to skip table header row

for (var i = 1; i < rows.length; i++) {

if (i < from || i > to)

rows[i].style.display = 'none';

else

rows[i].style.display = '';

}

}

this.showPage = function(pageNumber) {

if (! this.inited) {

alert("not inited");

return;

}

var oldPageAnchor = document.getElementById('pg'+this.currentPage);

oldPageAnchor.className = 'pg-normal';

this.currentPage = pageNumber;

var newPageAnchor = document.getElementById('pg'+this.currentPage);

newPageAnchor.className = 'pg-selected';

var from = (pageNumber - 1) * itemsPerPage + 1;

var to = from + itemsPerPage - 1;

this.showRecords(from, to);

}

this.prev = function() {

if (this.currentPage > 1)

this.showPage(this.currentPage - 1);

}

this.next = function() {

if (this.currentPage < this.pages) {

this.showPage(this.currentPage + 1);

}

}

this.init = function() {

var rows = document.getElementById(tableName).rows;

var records = (rows.length - 1);

this.pages = Math.ceil(records / itemsPerPage);

this.inited = true;

}

this.showPageNav = function(pagerName, positionId) {

if (! this.inited) {

alert("not inited");

return;

}

var element = document.getElementById(positionId);

var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> « Prev </span> ';

for (var page = 1; page <= this.pages; page++)

pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> ';

pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next »</span>';

element.innerHTML = pagerHtml;

}

}

</script>

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
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->
    <section id="advertisement" style=" margin-top: 10px; height: ">
        <div class="container" style=" ">
            <img src="img/Work/1.JPG" alt=""  />
		</div>
	</section>
    
    
    <!-- Product Shop Section Begin -->
    <%  String ft = request.getParameter("search");
    %>
    <br><br> <h2 style=" color: whitesmoke;; margin-left: 70px; background-color: #009966; text-align: center; width: 89%;"><b>Search Results for "<%=ft%>"</b> </h2><br>
    <section class="product-shop spad" style=" margin-top: -80px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter" 
                     style=" border: 2px solid whitesmoke; width:20%; height: 55%; padding-bottom: 30px; margin-left: 10px;">
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
                <li ><a style=" color: #009966;"  href="search2.jsp?+PET">PET</a></li>
                            <li><a style=" color: #009966;" href="search2.jsp?+Polysterene">Polysterene</a></li>
                            <li><a style=" color: #009966;" href="search2.jsp?+HDPE">HDPE</a></li>
                            <li><a  style=" color: #009966;" href="search2.jsp?+LDPE">LDPE</a></li>             
            </ul>
        </div>
                        </div>
          <div>
                            <button  class="accordion" style=" color: #009966; width: 100%;"><b>Paper</b> 
                                <i style=" margin-left: 55px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="search2.jsp?+old newspapers">Old Newspapers</a></li>
                            <li><a style=" color: #009966;" href="search2.jsp?old containers">Old Corrugated Containers</a></li>
                                         
            </ul>
        </div>
                        </div>
         <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 E-Waste</b> <i style=" margin-left: 31px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="search2.jsp?+Large appliances">Large Appliances</a></li>
                            <li><a style=" color: #009966;" href="search2.jsp?+Small Appliances">Small Appliances</a></li>
                                         
            </ul>
        </div>
                        </div>
            <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 Glass</b> <i style=" margin-left: 58px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="search2.jsp?+voloured glass">Coloured glass</a></li>
                            <li><a style=" color: #009966;" href="search2.jsp?+Clear Glass">Clear Glass</a></li>
                                         
            </ul>
        </div>
                        </div>  
               
            <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 Wood</b> <i style=" margin-left: 53px;" class="fa fa-plus "></i>  </button>
        <div class="panel">
            <ul style="  list-style-type: none; color: #009966; ">
                <li ><a style=" color: #009966;"  href="search2.jsp?+sawdust">Sawdust</a></li>
                 <li><a style=" color: #009966;" href="search2.jsp?+wood cuttings">Wood Cuttings</a></li>
                  <li><a style=" color: #009966;" href="search2.jsp?+wood shavings">Wood Shavings</a></li>                       
            </ul>
        </div>
                        </div>
           <div>
          <button  class="accordion" style=" color: #009966; width: 100%;"><b>
                 Metal</b> <i style=" margin-left: 54px;" class="fa fa-plus "></i>  </button>
                 <div class="panel" style=" border: ">
            <ul style="  list-style-type: none; color: #009966;  ">
                <li ><a style=" color: #009966;"  href="search2.jsp?+aluminium">Scrap Aluminium</a></li>
                 <li><a style=" color: #009966;" href="search2.jsp?+brass">Scrap Brass</a></li>
                  <li><a style=" color: #009966;" href="search2.jsp?+iron">Scrap Iron</a></li>                        
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
                    
                    
                    <div class="filter-widget" style=" margin-left: ">
                        <div style=" width: 100%; margin-top: -20px;">
                        <h4 class="fw-title" style=" background-color: #009966; margin-left: -15px; margin-top: -20px;  font-size: 24px;
	font-weight: 700; text-align: center; color: white; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd;padding: 8px; width:115%; ">
                            Price</h4></div>
                        <div class="filter-range-wrap" style=" margin-top: 20px;">
                            <div class="range-slider"  style=" color:  #009966;">
                                <div class="price-input" style=" color:  #009966;">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount" style=" margin-left: 15px;">
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="33" data-max="98" style=" background-color: whitesmoke;">
                                <div class="ui-slider-range ui-corner-all ui-widget-header" style=" color:  #009966;"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style=" "></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style=" "></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn" style=" background-color:#009966;">Filter</a>
                    </div>
                 
                    
                </div>
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="product-show-option" style=" margin-left: 0px;">
                        <div class="row">
                            <div class="col-lg-7 col-md-7">
                                <div class="custom select" style=" width: 200px; height:20px;  font-size: 30px;">
                                    <select class="sorting" style=" background-color: #009966; color: white;">
                                        <option value="Sort by">Sorting</option>
                                        <option value="featured">Featured</option>
                                        <option value="rating">Avg Rating</option>
                                        <option value="bought">Most bought</option>
                                    </select>
                                    
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 text-right">
                                <p>Show 01- 09 Of 36 Product</p>
                            </div>
                        </div>
                    </div>
        
                    
                            <table id="table"  class="TFtable" width="100%" style="  cursor: pointer;">
                                <tr>
                                    <th></th>
                                </tr>
                            
                        
                            <%//String p = (String)request.getSession().getAttribute("v");
                String s = request.getParameter("search");
                               try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/junkmart?autoReconnect=true&useSSL=false", "root", "kkn@MSPL786");
                    //System.out.println("EXECUTE the query");
                    String query = "select * from products where  product_name=? or product_description=? or product_category=?  or product_subcategory=?; ";
                    //System.out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, s);
                    st.setString(2, s);
                    st.setString(3, s);
                    st.setString(4, s);
                   int o=2;
                   int n=0;
                   int a1=1;
                   int a2= 2;
                   int a3=3;
                   int pid=0;
                    ResultSet rs = st.executeQuery();
                    while (rs.next()) {
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));
                    n=n+1;
                    String s1 = rs.getString("images");
                    String s2 = rs.getString("product_category");
                    String s3 = rs.getString("product_name");
                    float f1 = rs.getFloat("price_rate");
                    pid = rs.getInt("product_id");
            %>
           
               <tr class="hidden-table">
                <td>
                <div class="col-lg-4 col-sm-6">
                                <div class="product-item" style=" border:1px solid #cccccc; padding-left:10px; padding-right: 10px;padding-top: 5px;">
                                    <div class="pi-pic" >
                                        <img src="<%=s1%>" alt="">
                                        <div class="sale pp-sale" style=" background-color:  #009966;">Sale</div>
                                        <div class="icon" style=" ">
                                            <i class="fa fa-heart" style=" color: red;"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active" style=" background-color:  #009966;"><a href="#" style=" background-color:  #009966;"><i class="fa fa-shopping-cart" style=" background-color:  #009966;"></i></a></li>
                                            <li class="quick-view" style=" background-color:  #009966;">
                                                <a href="products.jsp?+<%=pid%>" style=" background-color:  #009966; color: white;">+ Quick View</a></li>
                                            <li class="w-icon" style=" background-color:  #009966;"><a href="#" style=" background-color:  #009966; color: white;"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text" >
                                        <div class="catagory-name" style=" font-size: 15px; color: #009966;" ><%=s2%></div>
                                        <div style="margin-left: -9.5px; background-color: whitesmoke; width: 108%; height: 110%; margin-top: 0px;">
                                        <a href="#">
                                            
                                            <h5 style=" margin-left: -1px; width: 100.1%; border: 1px solid #ddd; border-left: none; border-right: none; padding: 2px;"><%=s3%></h5>
                                        </a>
                                        <div class="product-price" style=" margin-left: -7px; width: 109%; padding-bottom: -50px; color: #009966;">
                                            ₹<%=f1%>
                                            <span>₹35.00</span>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                            
                                            <%  rs.absolute(a2);
                    String s21 = rs.getString("images");
                    String s22 = rs.getString("product_category");
                    String s23 = rs.getString("product_name");
                    float f21 = rs.getFloat("price_rate");
                    int pid2 = rs.getInt("product_id");
                                                 %>
                                            
                                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item" style=" border:1px solid #cccccc; padding-left:10px; padding-right: 10px;padding-top: 5px;">
                                    <div class="pi-pic" >
                                        <img src="<%=s21%>" alt="">
                                        <div class="sale pp-sale" style=" background-color:  #009966;">Sale</div>
                                        <div class="icon" style=" ">
                                            <i class="fa fa-heart" style=" color: red;"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active" style=" background-color:  #009966;"><a href="#" style=" background-color:  #009966;"><i class="fa fa-shopping-cart" style=" background-color:  #009966;"></i></a></li>
                                            <li class="quick-view" style=" background-color:  #009966;">
                                                <a href="products.jsp?+<%=pid2%>" style=" background-color:  #009966; color: white;">+ Quick View</a></li>
                                            <li class="w-icon" style=" background-color:  #009966;"><a href="#" style=" background-color:  #009966; color: white;"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text" >
                                        <div class="catagory-name" style=" font-size: 15px; color: #009966;" ><%=s22%></div>
                                        <div style="margin-left: -9.5px; background-color: whitesmoke; width: 108%; height: 110%; margin-top: 0px;">
                                        <a href="#">
                                            
                                            <h5 style=" margin-left: -1px; width: 100.1%; border: 1px solid #ddd; border-left: none; border-right: none; padding: 2px;"><%=s23%></h5>
                                        </a>
                                        <div class="product-price" style=" margin-left: -7px; width: 109%; padding-bottom: -50px; color: #009966;">
                                            ₹<%=f21%>
                                            <span>₹35.00</span>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                             <%   rs.absolute(a3);
                    String s31 = rs.getString("images");
                    String s32 = rs.getString("product_category");
                    String s33 = rs.getString("product_name");
                    float f31 = rs.getFloat("price_rate");
                    int pid3 = rs.getInt("product_id");
                                                 %> 
                                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item" style=" border:1px solid #cccccc; padding-left:10px; padding-right: 10px;padding-top: 5px;">
                                    <div class="pi-pic" >
                                        <img src="<%=s31%>" alt="">
                                        <div class="sale pp-sale" style=" background-color:  #009966;">Sale</div>
                                        <div class="icon" style=" ">
                                            <i class="fa fa-heart" style=" color: red;"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active" style=" background-color:  #009966;"><a href="#" style=" background-color:  #009966;"><i class="fa fa-shopping-cart" style=" background-color:  #009966;"></i></a></li>
                                            <li class="quick-view" style=" background-color:  #009966;">
                                                <a href="products.jsp?+<%=pid3%>" style=" background-color:  #009966; color: white;">+ Quick View</a></li>
                                            <li class="w-icon" style=" background-color:  #009966;"><a href="#" style=" background-color:  #009966; color: white;"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text" >
                                        <div class="catagory-name" style=" font-size: 15px; color: #009966;" ><%=s32%></div>
                                        <div style="margin-left: -9.5px; background-color: whitesmoke; width: 108%; height: 110%; margin-top: 0px;">
                                        <a href="#">
                                            
                                            <h5 style=" margin-left: -1px; width: 100.1%; border: 1px solid #ddd; border-left: none; border-right: none; padding: 2px;"><%=s33%></h5>
                                        </a>
                                        <div class="product-price" style=" margin-left: -7px; width: 109%; padding-bottom: -50px; color: #009966;">
                                            ₹<%=f31%>
                                            <span>₹35.00</span>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                            <% a1=a1+1;
                                            a2=a2+1;
                                            a3=a3+1;%>
                            </div>
                </td>
            
                      
            </tr>
           
            <%
                 }rs.close();
                    st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }
                
                %>
                            </table>  
                        <div id="pageNavPosition" style="padding-top: 0px;" align="center">
</div>
 <script type="text/javascript">
var pager = new Pager('table', 2);
pager.init();
pager.showPageNav('pager', 'pageNavPosition');
pager.showPage(1);
</script>
            </div>
        </div>
                <script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
    </section>
    <!-- Product Shop Section End -->

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
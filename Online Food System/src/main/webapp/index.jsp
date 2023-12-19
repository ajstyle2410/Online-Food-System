<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.ecommerce.Repository.Database"%>
<%@page import="com.ecommerce.Model.Food"%>
<%@page import="java.util.List"%>
  <%@include file="home-navbar.jsp" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> home page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="webapp/addCart.js"></script>
<script src="addCart.js"></script>
<link rel="stylesheet" href="index.css"/> 
  
  </head>
 
  
  <style>
  </style>
 
  <body>
  <nav></nav>
  <div class="container-fluid mt-1">
  
  <div id="carouselExampleFade" class="carousel slide carousel-fade">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://drive.google.com/uc?id=1_xA5NgIj2iWU9GHAy_exDidcDZM23J7e" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://drive.google.com/uc?id=1_xA5NgIj2iWU9GHAy_exDidcDZM23J7e" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://drive.google.com/uc?id=1_xA5NgIj2iWU9GHAy_exDidcDZM23J7e" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

    <div class="article mt-5">
        <div class="row">
      <div class="col-3">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title  fs-5">FREE DELIVERY</h3>
                        <p class="card-text">FREE DELIVERY
                            Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title fs-5">QUALITY GUARANTEE
                        </h3>
                        <p class="card-text ">FREE DELIVERY
                            Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title  fs-5">DAILY OFFERS
                        </h3>
                        <p class="card-text">FREE DELIVERY
                            Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title  fs-5">100% SECURE PAYMENT
                        </h3>
                        <p class="card-text">FREE DELIVERY
                            Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
        </div>
        <%

        Database db = new Database();
        List<Food> list = new ArrayList<Food>();
           list=db.getFoodList();
%>

        <div class="main-cards m-5" >

<h3>Veg Foods</h3>
          <div class="row">
                                                <%
  
      for(Food food :list)
      {
    	    if(food.getCategoryId()==1)
    	    {
  %>
            <div class="col-3 my-2">
              <div class="card">
                  <div class="card">
<img src="images/<%=food.getFileName()%>" class="card-img-top" alt="<%=food.getFileName()%> not found"/>
                     <div class="card-body text-center">
                      <h4><%= food.getFoodName() %></h4>
                      <h6> PRICE :<%= food.getFoodPrice() %></h6>
<button class="btn btn-primary" type="submit" onclick="add_cart(<%= food.getFoodId() %>, '<%= food.getFoodName() %>', <%= food.getFoodPrice() %>)">ADD CART</button>
                      </div>
                </div>
              </div>
            </div>
       

   <%
   }
      
      
      }
        %>
    </div>
     
     <h3>Non Veg Food</h3>
      <div class="row">
                                                <%
  
      for(Food food :list)
      {
    	    if(food.getCategoryId()==2)
    	    {
  %>
            <div class="col-3 my-2">
              <div class="card">
                  <div class="card">
<img src="images/<%=food.getFileName()%>" class="card-img-top" alt="<%=food.getFileName()%> not found"/>
                     <div class="card-body text-center">
                      <h4><%= food.getFoodName() %></h4>
                      <h6> PRICE :<%= food.getFoodPrice() %></h6>
                      <button  class="btn btn-primary " type= "submit" onclick="add_cart(<%= food.getFoodId() %>, '<%= food.getFoodName() %>', <%= food.getFoodPrice() %>)">ADD CART</button>       </div>
                </div>
              </div>
            </div>

   <%
   }
      
      
      }
        %>
    </div>
    
      <h3> Drinks</h3>
      <div class="row">
                                                <%
  
      for(Food food :list)
      {
    	    if(food.getCategoryId()==4)
    	    {
  %>
            <div class="col-3 my-2">
              <div class="card">
                  <div class="card">
<img src="images/<%=food.getFileName()%>" class="card-img-top" alt="<%=food.getFileName()%> not found"/>
                     <div class="card-body text-center">
                      <h4><%= food.getFoodName() %></h4>
                      <h6> PRICE :<%= food.getFoodPrice() %></h6>
                      <button  class="btn btn-primary " type= "submit" onclick="add_cart(<%= food.getFoodId() %>, '<%= food.getFoodName() %>', <%= food.getFoodPrice() %>)">ADD CART</button>       </div>
                </div>
              </div>
            </div>

   <%
   }
      }
        %>
    </div>
    
      <h3>Dessert</h3>
      <div class="row">
                                                <%
  
      for(Food food :list)
      {
    	    if(food.getCategoryId()==3)
    	    {
  %>
            <div class="col-3 my-2">
              <div class="card">
                  <div class="card">
<img src="images/<%=food.getFileName()%>" class="card-img-top" alt="<%=food.getFileName()%> not found"/>
                     <div class="card-body text-center">
                      <h4><%= food.getFoodName() %></h4>
                      <h6> PRICE :<%= food.getFoodPrice() %></h6>
                      <button  class="btn btn-primary " type= "submit" onclick="add_cart(<%= food.getFoodId() %>, '<%= food.getFoodName() %>', <%= food.getFoodPrice() %>)">ADD CART</button>       </div>
                </div>
              </div>
            </div>

   <%
   }
      
      
      }
        %>
    </div>
    </div>
  
</div>
  </div>
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="container-fluid">


  
  <!-- Footer -->



<div class="modal fade" id="cart" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel"> Your Cart</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="cart-body">
        
        </div>
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class=" btn btn-primary  " data-bs-toggle="modal" data-bs-target="#exampleModal">Check Out</button>
      </div> 
    </div>
  </div>
</div>
<div style="width:100%">
      <%@include file="footer.jsp" %>

</div>
</div>
<!-- End of .container -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  </body>
</html>
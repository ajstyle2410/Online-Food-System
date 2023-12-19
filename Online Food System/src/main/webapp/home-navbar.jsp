<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <!doctype html>    
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>  </head>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="index.css"/> 
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
  
  <body>
  
  <nav
    class="navbar navbar-expand-sm navbar-dark bg-light "
  >
    <button
        class="navbar-toggler d-lg-none"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#collapsibleNavId"
        aria-controls="collapsibleNavId"
        aria-expanded="false"
        aria-label="Toggle navigation"
    ></button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav me-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link active text-dark " href="index.jsp" aria-current="page" TARGET="index.jsp"
                    >Home </a
                >
            </li>            
            <li class="nav-item ">
                <a class="nav-link text-dark" href="AllFoods.jsp">All Foods</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link text-dark" href="VegFood.jsp">Veg Foods</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link text-dark" href="NonVeg.jsp"> Non Veg Foods</a>
            </li>
             <li class="nav-item ">
                <a class="nav-link text-dark" href="Drinks.jsp">Drinks</a>
            </li>
            
            <li class="nav-item ">
                <a class="nav-link text-dark" href="Ice Creams.jsp">Dessert</a>
            </li>


<li class="nav-item ">
                <a class="nav-link text-dark"  href="#"  data-bs-toggle="modal" data-bs-target="#cart">
                    <i class="fa fa-cart-plus" style="font-size:38px" aria-hidden="true">
                    <span class="cart-items  badge bg-danger text-wrap" style="font-size:15px">(0)</span>
   </i>  
       </a>
            </li>
     
            <li class="nav-item ">
                <a class="nav-link text-dark"  style="font-size:24px" href="login.jsp">   <i class="fa fa-sign-in" aria-hidden="true"> login</i></a>
            </li>
         
        </ul>
      
  </div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Order Delevered... </h1>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  </nav>
  </body>
  </html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
  <%@include file="home-navbar.jsp" %>

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
</head>
<script src="addCart.js"></script>
<body>
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
        <button type="button" class="checkout-btn btn btn-primary "data-bs-toggle="modal" data-bs-target="#cart" onclick="addToCart()">Check Out</button>
      </div> 
    </div>
  </div>
</div>
<div style="width:100%">
</div>
</body>
</html>
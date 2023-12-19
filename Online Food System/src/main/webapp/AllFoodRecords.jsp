<%@page import="java.util.ArrayList"%>
<%@page import="com.ecommerce.Model.Food"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.Repository.Database"%>
    <%@include file="Admin.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 
</head>
  <body>
  <%
   
Database d = new Database();
	 List<Food> food = new ArrayList<Food>();
     food=d.getFoodList();
%>
     <div class="container-fluid">

<table class="table">
        <thead>
          <tr>
            <th scope="col">Food Id</th>
            <th scope="col">Food Name</th>
            <th scope="col">Food Price </th>
            <th scope="col">Food Description</th>
               <th scope="col">Food Image</th>
               <th>Action</th>
 
          </tr>
        </thead>
      <tbody>  
                   <%
                   for(Food f : food)
               	  {
              
                   %>
     
          <tr>
            <th scope="row"><%= f.getFoodId() %></th>
            <td><%= f.getFoodName() %></td>
            <td><%= f.getFoodPrice()%></td>
            <td><%= f.getDescription()%></td>
            <td><%= f.getFileName() %></td>
         <td>
            <a href='FoodUpdate.jsp?foodId=<%= f.getFoodId()%>'>
                       <i class="fa fa-pencil" style="font-size:20px;"></i>
            </a>
              <a  href='deleteProduct?foodId=<%= f.getFoodId()%>'>
            <i class="fa fa-trash mx-1" style="font-size:20px;"></i>
            </a>
          
         </td>
          </tr>
         
        
            <%
               	  }
            %>
         
        </tbody>
      </table>
 
    
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>
    <%@include file="Admin.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
    <%@page import="com.ecommerce.Model.Regisrarion"%>
    <%@page import="java.util.List"%>
<%@page import="com.ecommerce.Repository.Database"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
  <body>
  <%
   
Database d = new Database();
	 List<Regisrarion> list =  d.userRegistrationList();  
%>
     <div class="container-fluid mt-5">

        <table class="table table-hover  ">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
                   <%
                   for(Regisrarion register : list)
               	  {
              
                   %>
                
        <tbody>
          <tr>
            <th scope="row">
            <%= register.getReigsterId() %></th>
            <td><%= register.getName() %></td>
            <td><%= register.getEmail() %></td>
            <td><%= register.getPassword() %></td>
            <td class="d-flex">
            <a href="updateCustomer.jsp?id=<%=register.getReigsterId()%>">
            <i class="fa fa-pencil" style="font-size:20px;"></i>
            </a>
              <a href="">
            <i class="fa fa-trash mx-3" style="font-size:20px;"></i>
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
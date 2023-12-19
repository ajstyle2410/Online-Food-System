<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ecommerce.Model.Category"%>
<%@page import="com.ecommerce.Repository.Database"%>
    <%@include file="Admin.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Image Upload</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <div class="container-fluid justify-content-center mt-5 d-grid">
        <div class="details mt-5">
            <form action="foodrecords" method="post" enctype="multipart/form-data">
                <!-- Food Name -->
                <div class="mb-4">
                    <label for="foodName" class="form-label">Food Name</label>
                    <input type="text" id="foodName" class="form-control" name="foodName" required>
                </div>
                <!-- Food Price -->
                <div class="mb-4">
                    <label for="foodPrice" class="form-label">Food Price</label>
                    <input type="text" id="foodPrice" class="form-control" name="foodPrice" required>
                </div>
              
               <div class="mb-4">
                 <select class="form-select form-select-lg mb-3" aria-label="Large select example" name="categoryId">
                      	    	 <option selected>Open this select menu</option>
  
   <%
     Database database = new Database();
                    		
                    		List<Category>  ll = new ArrayList<Category>();	
                    	    ll=database.getCategories();
                    	      
                    	     for(Category category:ll)
                    	     {
                    	    	  
                    	    	 %>
                                 <option value= <%= category.getCid() %>><%= category.getCategory() %></option>
                               
                    	    	 <% 
                    	     }
   						 %>
   						 </select>


                </div>
                
                <!-- Description -->
                <div class="mb-4">
                    <label for="Description" class="form-label">Description</label>
                    <input type="text" id="Description" class="form-control" name="Description" required>
                </div>
                <!-- File Upload -->
                <div class="mb-3">
                    <label for="foodimage" class="form-label">Food Image</label>
                    <input class="form-control" type="file" id="foodimage" name="foodimage" required>
                </div>
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-4">Upload</button>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>

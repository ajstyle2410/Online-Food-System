<%@page import="java.util.ArrayList"%>
<%@page import="com.ecommerce.Model.Food"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.Repository.Database"%>
<%@ include file="home-navbar.jsp" %>
    
    <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
 <script src="addCart.js"></script>
 
<style>

    .gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
}
</style>
</head>
  <body>
     <div class="container-fluid">
<div class="main-cards m-5" >

          <div class="row">
                                                <%
                                                

                                                Database database = new Database();
                                                List<Food> lst= new ArrayList<Food>();
                                                   lst=database.getFoodList();
  
      for(Food food :lst)
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
</div>
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
        <button type="button" class="checkout-btn btn btn-primary " onclick="addToCart()">Check Out</button>
      </div> 
    </div>
  </div>
</div>
<div>
      <%@include file="footer.jsp" %>

</div>
     </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>
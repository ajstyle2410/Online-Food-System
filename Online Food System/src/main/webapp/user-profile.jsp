<%@page import="com.ecommerce.Model.Regisrarion"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.Repository.Database"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
 
<style>

.gradient-custom {
background: #f6d365;

background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
}
</style>
</head>
  <body>
  <%
  String username=(String)session.getAttribute("username");  
  Database d = new Database();
	 List<Regisrarion> list =  d.userRegistrationList();     
  %>
     <div class="container-fluid">

        <section class="vh-100" style="background-color: #f4f5f7;">
        
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                    <%
                    for(Regisrarion register : list)
              	  {
                  	          if(register.getName().equals(username))
                  	          {
                    %>
                      <div class="col col-lg-6 mb-4 mb-lg-0">
                        <div class="card mb-3" style="border-radius: .5rem;">
                          <div class="row g-0">
                            <div class="col-md-4 gradient-custom text-center text-white"
                              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                              <h5><%=register.getName() %></h5>
                              <i class="far fa-edit mb-5"></i>
                            </div>
                            <div class="col-md-8">
                              <div class="card-body p-4">
                 
                                <hr class="mt-0 mb-4">
                                <div class="row pt-1">
                                  <div class="col-6 mb-3">
                                    <h6>Email</h6>
                                    <p class="text-muted"><%= register.getEmail() %></p>
                                  </div>
                                  <div class="col-6 mb-3">
                                    <h6>Phone</h6>
                                    <p class="text-muted">123 456 789</p>
                                  </div>
                                </div>
                                <h6>Projects</h6>
                                <hr class="mt-0 mb-4">
                                <div class="row pt-1">
                                  <div class="col-6 mb-3">
                                    <h6>Recent</h6>
                                    <p class="text-muted">Lorem ipsum</p>
                                  </div>
                                  <div class="col-6 mb-3">
                                    <h6>Most Viewed</h6>
                                    <p class="text-muted">Dolor sit amet</p>
                                  </div>
                                </div>
                                <div class="d-flex justify-content-start">
                                  <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                                  <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                                  <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                                </div>
                              </div>
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
                </section>
           </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        </body>
      </html>
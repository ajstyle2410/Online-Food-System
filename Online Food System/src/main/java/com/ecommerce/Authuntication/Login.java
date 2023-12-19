package com.ecommerce.Authuntication;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommerce.Model.AdminController;
import com.ecommerce.Model.Regisrarion;
import com.ecommerce.Repository.Database;
import com.mysql.cj.Session;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		  PrintWriter out  = response.getWriter();
		   String name= request.getParameter("email");
		   String password = request.getParameter("password");
		   Database d = new Database();
		   
		   boolean f=true;
		
		      try {
				List<Regisrarion> list = d.getRecords();
				
				  for (Regisrarion r : list) {
					  
					  if(r.getEmail().equals(name)&& r.getPassword().equals(password))
					  {
						   f=false;
					        HttpSession session=request.getSession();  
						     session.setAttribute("Username", r.getName());
						  RequestDispatcher rd=  request.getRequestDispatcher("home-navbar.jsp");
						  rd.forward(request, response);
					  }
				  }
				  
				   try {
					   List<AdminController> admin =d.getAdminList();
				   
				   for (AdminController adminController : admin) {
					   if(adminController.getAdminName().equals(name) && adminController.getAdminPassword().equals(password))
					      {
						   f=false;
						   RequestDispatcher rd=  request.getRequestDispatcher("Admin.jsp");
							  rd.forward(request, response);
					      }
				}
				   }catch(Exception ex)
				   {
					   
				   }
				  
				  
				     
					  if(f) {
					       String msg ="Sorry UserName or Password Error!";
						  request.setAttribute("msg",msg);
						  RequestDispatcher rd=  request.getRequestDispatcher("login.jsp");
						  rd.forward(request, response);
					  }    
				

		      } catch (SQLException e) {
				e.printStackTrace();
			}
		     
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

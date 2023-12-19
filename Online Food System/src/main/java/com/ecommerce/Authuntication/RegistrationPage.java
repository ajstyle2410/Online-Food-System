package com.ecommerce.Authuntication;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.Model.Regisrarion;
import com.ecommerce.Repository.Database;


@WebServlet("/RegistrationPage")
public class RegistrationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		    String name=request.getParameter("name");
		    String email=request.getParameter("email");
		    String password=request.getParameter("password");
		    String rpassword=request.getParameter("rpassowrd");
		    	
		    Regisrarion r = new Regisrarion();
		     r.setName(name);
		     r.setEmail(email);
		     r.setPassword(password);
		     r.setRpassword(rpassword);
		  
		     
		     Database d  = new Database();
		     try {
			boolean b=	d.setRegistration(r);
			
			  if(b)
			  {
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

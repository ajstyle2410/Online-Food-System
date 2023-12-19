package com.ecommerce.Controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ecommerce.Repository.Database;

@WebServlet("/addCategory")
public class AddCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 String name= request.getParameter("category");
		 
		 Database data = new Database();
		 try {
		boolean b=	data.addCategory(name);
	    if(b)
      	  response.sendRedirect("index.jsp");
        else
      	  response.sendRedirect("index.jsp");
        
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

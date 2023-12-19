package com.ecommerce.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.Repository.Database;

@WebServlet("/deleteProduct")
public class deleteFood extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 int id = Integer.parseInt(request.getParameter("foodId"));
		 
		   Database db = new Database();
		try {
			boolean b=   db.deleteFoodRecords(id);
			  if(b)
				  response.sendRedirect("AllFoodRecords.jsp");
			  else
				  response.sendRedirect("AllFoodRecords.jsp");
			
		} catch (SQLException e) {

		}
	
	}


}

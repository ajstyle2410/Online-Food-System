package com.ecommerce.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.Model.Food;
import com.ecommerce.Repository.Database;


@WebServlet("/updatefood")
public class UpdateFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
	PrintWriter out = response.getWriter();
	
	String id = request.getParameter("fid");
	int foodId = Integer.parseInt(id);

	      out.println(foodId);
	    String foodName = request.getParameter("foodName");
	    int foodPrice = Integer.parseInt(request.getParameter("foodPrice"));
	    String description = request.getParameter("Description");
	    int categoryId =Integer.parseInt(request.getParameter("categoryId")) ;
	    Database database = new Database();

		  
	        Food f = new Food();
	        f.setFoodId(foodId);
	        f.setDescription(description);
	        f.setCategoryId(categoryId);
	        f.setFoodName(foodName);
	        f.setFoodPrice(foodPrice);
	        

	        boolean b;
			try {
				b = database.updateFoodRecords(foodId, foodName, foodPrice, description, categoryId);
			
	        if (b) {
          RequestDispatcher rd = request.getRequestDispatcher("AllFoodRecords.jsp");
          rd.forward(request, response);
	        } else {
	            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	            rd.forward(request, response);
	        }
	    
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	}



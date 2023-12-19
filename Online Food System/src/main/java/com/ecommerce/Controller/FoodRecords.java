package com.ecommerce.Controller;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ecommerce.Model.Category;
import com.ecommerce.Model.Food;
import com.ecommerce.Repository.Database;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/foodrecords")
@MultipartConfig(maxFileSize = 16177215)

public class FoodRecords extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Database database = new Database();

		
	    Part image = null;
	    if (request.getContentType() != null && request.getContentType().contains("multipart/form-data")) {
	        image = request.getPart("foodimage");
	    }
	    String foodName = request.getParameter("foodName");
	    int foodPrice = Integer.parseInt(request.getParameter("foodPrice"));
	    String description = request.getParameter("Description");
	    int categoryId =Integer.parseInt(request.getParameter("categoryId")) ;
	    String fileName = image.getSubmittedFileName();

		String path="D://Java Projects on Github//Online Food System//src//main//webapp//images//" +fileName;
		  
	    System.out.println(path);
	        Food f = new Food();
	        f.setFileName(fileName);
	        f.setDescription(description);
	        f.setCategoryId(categoryId);
	        f.setFoodName(foodName);
	        f.setFoodPrice(foodPrice);
	        //  update records

	    try (FileOutputStream fos = new FileOutputStream(path); InputStream input = image.getInputStream()) {
	        byte[] data = new byte[1024]; // Use a buffer to read data in chunks
	        int bytesRead;
	        while ((bytesRead = input.read(data)) != -1) {
	            fos.write(data, 0, bytesRead);
	        }
	        
	        // Note: You don't need to call image.delete() explicitly

	         List<Category> list= database.getCategories();
	         
	        boolean b = database.AddFoodRecords(fileName, foodName, foodPrice, description,categoryId);
	          if(b)
	        	  response.sendRedirect("index.jsp");
	          else
	        	  response.sendRedirect("index.jsp");
	          
	    } catch (Exception ex) {
	        ex.printStackTrace();
	    }
	
	}

}

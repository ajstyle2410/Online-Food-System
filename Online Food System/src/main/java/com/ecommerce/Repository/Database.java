package com.ecommerce.Repository;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ecommerce.Controller.Admin;
import com.ecommerce.Model.AdminController;
import com.ecommerce.Model.Category;
import com.ecommerce.Model.Food;
import com.ecommerce.Model.Regisrarion;
import com.ecommerce.Repository.Database;

@WebServlet("/Databases")
public class Database extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	HttpServletResponse response;
	HttpServletRequest request;

	public Database() {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/ onlinefood?&useSSL=false";
			String username = "root";
			String password = "root";

			con = DriverManager.getConnection(url, username, password);

		} catch (Exception ex) {
			System.out.println("database exception " + ex);
		}
	}

	public boolean setRegistration(Regisrarion r) throws SQLException, ServletException, IOException {

		stmt = con.prepareStatement("insert into registration values('0',?,?,?,?)");
		stmt.setString(1, r.getName());
		stmt.setString(2, r.getEmail());
		stmt.setString(3, r.getPassword());
		stmt.setString(4, r.getRpassword());
		int val = stmt.executeUpdate();
		if (val > 0)
			return true;
		else
			return false;
	}

	public List<Regisrarion> getRecords() throws SQLException {
		List<Regisrarion> list = new ArrayList<Regisrarion>();
		stmt = con.prepareStatement("select * from registration");
		rs = stmt.executeQuery();
		Regisrarion rd = new Regisrarion();
		while (rs.next()) {
			rd.setReigsterId(rs.getInt("id"));
			rd.setName(rs.getString("name"));
			rd.setEmail(rs.getString("email"));
			rd.setPassword(rs.getString("password"));
			rd.setRpassword(rs.getString("rpassword"));
			list.add(rd);
		}

		return list;
	}

	public boolean addCategory(String Category) throws SQLException {
		stmt = con.prepareStatement("insert into category values('0',?)");
		stmt.setString(1, Category);
		if (stmt.executeUpdate() > 0)
			return true;
		else
			return false;

	}
	
	 public List<Category> getCategories() throws SQLException
	 {
		 List<Category> list = new ArrayList<Category>();
		  stmt= con.prepareStatement("select * from category");
		  rs = stmt.executeQuery();
		  while(rs.next())
		  {
			  Category c = new Category();

			  c.setCid(rs.getInt("category_id"));
			  c.setCategory(rs.getString("category_title"));
			  list.add(c);
		  }
		   for (Category category : list) {
			System.out.println(category.getCategory());
		}
		  
		return list;
		 
	 }

	public boolean AddFoodRecords(String fileName, String foodName, int foodPrice, String description, int categoryId)
			throws SQLException {
System.out.println("----->"+fileName);
		stmt = con.prepareStatement("insert into food values('0',?,?,?,?,?,?,?)");
		stmt.setString(1, description);
		stmt.setInt(2, foodPrice);
		stmt.setString(3, fileName);
		stmt.setInt(4, categoryId);
		stmt.setString(5, "features");
		stmt.setString(6, "achive");
		stmt.setString(7, foodName);

		int val = stmt.executeUpdate();
		if (val > 0)
			return true;
		else
			return false;
	}
	
	public List<Food> getFoodList() throws SQLException {
	    List<Food> lst = new ArrayList<Food>();
	    stmt = con.prepareStatement("select * from food");
	    rs = stmt.executeQuery();

	    while (rs.next()) {
	        Food f = new Food(); 
	        f.setFoodId(rs.getInt("food_id"));
	        f.setDescription(rs.getString("description"));
	        f.setFoodPrice(rs.getInt("price"));
	        f.setFileName(rs.getString("img_name"));
	        f.setCategoryId(rs.getInt("cat_id"));
	        f.setFeatures(rs.getString("features"));
	        f.setAchive(rs.getString("achive"));
	        f.setFoodName(rs.getString("food_title"));

	        lst.add(f);
	    }

	    return lst;
	}

	  public boolean updateRegistration(Regisrarion r, int id) throws SQLException
	  {
		   stmt = con.prepareStatement("update  registration set name='"+r.getName()+"', email='"+r.getEmail()+"',password='"+r.getPassword()+"',rpassword='"+r.getRpassword()+"' where id='"+id+"'");
		    int  kiran = stmt.executeUpdate();
		  if(kiran>0)
		return true;
		else 
			return false;
		  
	  }
	
	
	public List<Regisrarion> userRegistrationList() throws SQLException {
List<Regisrarion> list = new ArrayList<Regisrarion>();
  stmt = con.prepareStatement("select * from registration");
    rs = stmt.executeQuery();
    while(rs.next())
    {
    	      Regisrarion rd = new Regisrarion();
    	      rd.setReigsterId(rs.getInt("id"));
    	      rd.setName(rs.getString("name"));
    	      rd.setEmail(rs.getString("email"));
    	      rd.setPassword(rs.getString("password"));
    	      rd.setRpassword(rs.getString("rpassword"));
         list.add(rd);
    }
  
		 
		return list;
	}
	
	 public List<AdminController> getAdminList() throws SQLException
	 {
		 List<AdminController> list = new ArrayList<AdminController>();
		  stmt = con.prepareStatement("select * from Admin");
		    rs = stmt.executeQuery();
		    while(rs.next())
		    {
		    	AdminController  ad = new AdminController();
	        	   ad.setAdminId(rs.getInt(1));
	        	   ad.setAdminName(rs.getString(2));
	        	   ad.setAdminPassword(rs.getString(3));
		         list.add(ad);
		    }
		  
		return list;
		 
	 }

	public boolean updateFoodRecords( int foodId, String foodName, int foodPrice, String description, int categoryId) throws SQLException {
    System.out.println("&&&&&&&&&&&&&&&&");
		  stmt = con.prepareStatement("update food set description='"+description+"', price='"+foodPrice+"', food_title='"+foodName+"' where food_id='"+foodId+"'");
		     int val = stmt.executeUpdate();
		    if(val>0)
		    {
		    	return true;
		    }
		    	else
		  return false;
		    
	}

	public boolean deleteFoodRecords(int id) throws SQLException {
		
		  stmt=con.prepareStatement("delete from food where food_id='"+id+"'");
		   int val = stmt.executeUpdate();
		   System.out.println(val);
		   if(val>0)
			   return true;
		   else
		return false;
	}


}

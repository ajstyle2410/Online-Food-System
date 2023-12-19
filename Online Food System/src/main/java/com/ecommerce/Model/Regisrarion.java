package com.ecommerce.Model;

public class Regisrarion {

	  private int reigsterId;
	  private String name;
	  private String email;
	  private String password;
	  private String rpassword;
	public int getReigsterId() {
		return reigsterId;
	}
	public void setReigsterId(int reigsterId) {
		this.reigsterId = reigsterId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRpassword() {
		return rpassword;
	}
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
	@Override
	public String toString() {
		return "Regisrarion [reigsterId=" + reigsterId + ", name=" + name + ", email=" + email + ", password="
				+ password + ", rpassword=" + rpassword + "]";
	}
	  
}

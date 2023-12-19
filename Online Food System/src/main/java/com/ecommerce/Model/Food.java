package com.ecommerce.Model;

public class Food {
    private int foodId;
	public String getFeatures() {
		return features;
	}

	public void setFeatures(String features) {
		this.features = features;
	}

	public String getAchive() {
		return achive;
	}

	public void setAchive(String achive) {
		this.achive = achive;
	}
	private String fileName ; 
	 private String foodName;
	 private int foodPrice;
	 private String description;
	 private int categoryId;
	  private String features;
	   private String achive;
	public String getFileName() {
		return fileName;
	}
	
	public int getFoodId() {
		return foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public int getFoodPrice() {
		return foodPrice;
	}
	public void setFoodPrice(int foodPrice) {
		this.foodPrice = foodPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
}

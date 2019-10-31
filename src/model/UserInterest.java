package model;

public class UserInterest {
	private int userId;
	private int categoriesId;
	private int categoriesContentId;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCategoriesId() {
		return categoriesId;
	}
	public void setCategoriesId(int categoriesId) {
		this.categoriesId = categoriesId;
	}
	public int getCategoriesContentId() {
		return categoriesContentId;
	}
	public void setCategoriesContentId(int categoriesContentId) {
		this.categoriesContentId = categoriesContentId;
	}
	public UserInterest() {
		
	}
	public UserInterest(int userId, int categoriesId, int categoriesContentId) {
		super();
		this.userId = userId;
		this.categoriesId = categoriesId;
		this.categoriesContentId = categoriesContentId;
	}
	public UserInterest(int userId, int categoriesId) {
		super();
		this.userId = userId;
		this.categoriesId = categoriesId;
	}
	
	
	
	
}

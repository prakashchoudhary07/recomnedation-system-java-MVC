package model;

public class Categories {
	private int cId;
	private String name;

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Categories() {

	}

	public Categories(int cId, String name) {
		super();
		this.cId = cId;
		this.name = name;
	}

}

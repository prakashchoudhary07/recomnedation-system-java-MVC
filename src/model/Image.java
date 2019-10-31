package model; 

public class Image {
	private int imgid ;
	private String imgname;
	private String imgUrl;
	private int imgCat;
	private String adimgid;
	
	public String getAdimgid() {
		return adimgid;
	}
	public void setAdimgid(String adimgid) {
		this.adimgid = adimgid;
	}
	public int getImgid() {
		return imgid;
	}
	public void setImgid(int imgid) {
		this.imgid = imgid;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public int getImgCat() {
		return imgCat;
	}
	public void setImgCat(int imgCat) {
		this.imgCat = imgCat;
	}
	
	public Image() {
		
	}
	public Image(int imgid, String imgname, String imgUrl, int imgCat) {
		super();
		this.imgid = imgid;
		this.imgname = imgname;
		this.imgUrl = imgUrl;
		this.imgCat = imgCat;
	}
	public Image( String adimgid, String imgname, String imgUrl, int imgCat) {
		super();
		this.imgname = imgname;
		this.imgUrl = imgUrl;
		this.imgCat = imgCat;
		this.adimgid = adimgid;
	}
	public Image(int imgid, String imgname, String imgUrl) {
		super();
		this.imgid = imgid;
		this.imgname = imgname;
		this.imgUrl = imgUrl;
	}
	public Image(String imgname, String imgUrl, int imgCat) {
		super();
		this.imgname = imgname;
		this.imgUrl = imgUrl;
		this.imgCat = imgCat;
	}
	
	
	
	
}

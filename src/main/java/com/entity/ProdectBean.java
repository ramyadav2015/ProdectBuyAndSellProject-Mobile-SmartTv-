package com.entity;

public class ProdectBean {
	
	private long srNo;
	private String name;
	private String company;
	private String type;
	private String price;
	private String image;
	private String makeDate;
	private String expityDate;
	private String prodectNo;
	private String about;
	
	
		
	public long getSrNo() {
		return srNo;
	}
	public void setSrNo(long srNo) {
		this.srNo = srNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getMakeDate() {
		return makeDate;
	}
	public void setMakeDate(String makeDate) {
		this.makeDate = makeDate;
	}
	public String getExpityDate() {
		return expityDate;
	}
	public void setExpityDate(String expityDate) {
		this.expityDate = expityDate;
	}
	public String getProdectNo() {
		return prodectNo;
	}
	public void setProdectNo(String prodectNo) {
		this.prodectNo = prodectNo;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about=about;
	}



	@Override
	public String toString() {
		return "ProdectBean [srNo=" + srNo + ", name=" + name + ", company=" + company + ", type=" + type + ", price="
				+ price + ", image=" + image + ", makeDate=" + makeDate + ", expityDate=" + expityDate + ", prodectNo="
				+ prodectNo + ", about=" +about+ "]";
	}
	
	
	
	
	

}

package com.yesool.model;

import java.util.Date;

public class ItemVo {
	private int itemNO;
	private String itemName;
	private int price;
	private String pdDate;
	private int capa;
	private String description;
	private String pdOrg;
	private String saleType;
	private String cateName;
	private String imgName;
	private String bigImg;
	public int getItemNO() {
		return itemNO;
	}
	public String getItemName() {
		return itemName;
	}
	public int getPrice() {
		return price;
	}
	public int getCapa() {
		return capa;
	}
	
	public String getDescription() {
		return description;
	}
	public String getPdOrg() {
		return pdOrg;
	}
	public String getSaleType() {
		return saleType;
	}
	

	public void setItemNO(int itemNO) {
		this.itemNO = itemNO;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	public String getPdDate() {
		return pdDate;
	}
	public void setPdDate(String pdDate) {
		this.pdDate = pdDate;
	}
	public void setCapa(int capa) {
		this.capa = capa;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPdOrg(String pdOrg) {
		this.pdOrg = pdOrg;
	}
	public void setSaleType(String saleType) {
		this.saleType = saleType;
	}
	
	public String getCateName() {
		return cateName;
	}
	
	public String getImgName() {
		return imgName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getBigImg() {
		return bigImg;
	}
	public void setBigImg(String bigImg) {
		this.bigImg = bigImg;
	}
	
	
	

	
}

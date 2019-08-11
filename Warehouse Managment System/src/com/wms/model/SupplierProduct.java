package com.wms.model;

public class SupplierProduct {
	
	private String supplierId;
	private String productId;
	private String productName;
	private int qty;
	private double proPrice;
	private String warranty;
	private String condition;
	
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getProPrice() {
		return proPrice;
	}
	public void setProPrice(double proPrice) {
		this.proPrice = proPrice;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	@Override
	public String toString() {
		return "SupplierProduct [supplierId=" + supplierId + ", productId=" + productId + ", productName=" + productName
				+ ", qty=" + qty + ", proPrice=" + proPrice + ", warranty=" + warranty + ", condition=" + condition
				+ "]";
	}
	


	
	
	
	

}

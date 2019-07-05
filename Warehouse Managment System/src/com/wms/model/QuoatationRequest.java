package com.wms.model;

public class QuoatationRequest extends Quoation{
	private String date;
	private String email;
	private String address;
	private String supplierName;
	private String description;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "QuoatationRequest [date=" + date + ", email=" + email + ", address=" + address + ", supplierName="
				+ supplierName + ", description=" + description + "]";
	}

	
}

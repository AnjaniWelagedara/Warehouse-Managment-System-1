package com.wms.model;

public class Inventory {
	private String itemNo;
	private String name;
	private String description;
	private String warrentyYear;
	private String addedDate;
	private int owner;
	private String location;
	private String status;

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getWarrentyYear() {
		return warrentyYear;
	}

	public void setWarrentyYear(String warrentyYear) {
		this.warrentyYear = warrentyYear;
	}

	public String getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(String addedDate) {
		this.addedDate = addedDate;
	}

	public int getOwner() {
		return owner;
	}

	public void setOwner(int owner) {
		this.owner = owner;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Inventory [itemNo=" + itemNo + ", name=" + name + ", description=" + description + ", warrentyYear="
				+ warrentyYear + ", addedDate=" + addedDate + ", owner=" + owner + ", location=" + location
				+ ", status=" + status + "]";
	}

	

}

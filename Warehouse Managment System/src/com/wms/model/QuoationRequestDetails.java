package com.wms.model;

public class QuoationRequestDetails extends Quoation {
	private String quoaReDeId;
	private String itemName;
	private String type;
	private String condition;
	private String duration;
	private int qty;

	public String getQuoaReDeId() {
		return quoaReDeId;
	}

	public void setQuoaReDeId(String quoaReDeId) {
		this.quoaReDeId = quoaReDeId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	@Override
	public String toString() {
		return "QuoationRequestDetails [quoaReDeId=" + quoaReDeId + ", itemName=" + itemName + ", type=" + type
				+ ", condition=" + condition + ", duration=" + duration + ", qty=" + qty + "]";
	}

}

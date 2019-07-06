package com.wms.service;

import com.wms.model.Inventory;

public interface IInventoryManager {
	
	/**
	 * Add assignments
	 * @param inventory
	 */
	public void addItems(Inventory inventory);
}

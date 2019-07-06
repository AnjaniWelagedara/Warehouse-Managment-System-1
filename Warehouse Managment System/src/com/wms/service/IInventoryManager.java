package com.wms.service;

import java.util.ArrayList;

import com.wms.model.Inventory;

public interface IInventoryManager {
	
	/**
	 * Add assignments
	 * @param inventory
	 */
	public void addItems(Inventory inventory);
	
	/**
	 * get all in Inventory table
	 */
	public ArrayList<Inventory> getInventoryList();
	
	/**
	 * delete all Inventory Items
	 */
	public void deleteAllItems();
	
	/**
	 * Add assignments
	 * @param inventory
	 */
	public void deleteItemById(String itemNo);
}

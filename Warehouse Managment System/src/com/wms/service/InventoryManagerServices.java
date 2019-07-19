package com.wms.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLType;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.mysql.jdbc.CallableStatement;
import com.wms.model.Inventory;
import com.wms.util.CommonConstants;
import com.wms.util.CommonFunctions;
import com.wms.util.DBConnectionUtil;
import com.wms.util.QueryUtil;

public class InventoryManagerServices implements IInventoryManager {

	public static final Logger log = Logger.getLogger(InventoryManagerServices.class.getName());

	private static Connection connection;

	private static Statement statement;

	private static PreparedStatement ps;

	private static ResultSet rs;
	
	CallableStatement stmt = null;
	@Override
	public void addItems(Inventory inventory) {
		// TODO Auto-generated method stub
				String itemNo = CommonFunctions.generateIDs(getInvetoryTableID(), CommonConstants.INVENRTORY_PREFIX);

				try {

					connection = DBConnectionUtil.getDBConnection();

					ps = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_ADD_INVENTORY_TABLE));
					connection.setAutoCommit(false);

					inventory.setItemNo(itemNo);
					System.out.println(itemNo);
					ps.setString(CommonConstants.COLUMN_INDEX_ONE, inventory.getItemNo());
					ps.setString(CommonConstants.COLUMN_INDEX_TWO, inventory.getName());
					ps.setString(CommonConstants.COLUMN_INDEX_THREE, inventory.getDescription());
					ps.setString(CommonConstants.COLUMN_INDEX_FOUR, inventory.getWarrentyYear());
					ps.setString(CommonConstants.COLUMN_INDEX_FIVE, inventory.getAddedDate());
					ps.setString(CommonConstants.COLUMN_INDEX_SIX, inventory.getLocation());
					ps.setString(CommonConstants.COLUMN_INDEX_SEVEN, inventory.getStatus());
					ps.setString(CommonConstants.COLUMN_INDEX_EIGHT, inventory.getOwner());
					ps.execute();
					connection.commit();

				} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
					log.log(Level.SEVERE, e.getMessage());
				} finally {
					/*
					 * Close prepared statement and database connectivity at the end of transaction
					 */
					try {
						if (ps != null) {
							ps.close();
						}
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						log.log(Level.SEVERE, e.getMessage());
					}
				}
	}
	
	private ArrayList<String> getInvetoryTableID() {

		ArrayList<String> arrayList = new ArrayList<String>();

		try {
			connection = DBConnectionUtil.getDBConnection();
			ps = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_INVENTORY_TABLE_ENTRY_COUNT));
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
	
	
	@Override
	public ArrayList<Inventory> getInventoryList() {

		ArrayList<Inventory> list = new ArrayList<Inventory>();

		try {
			connection = DBConnectionUtil.getDBConnection();

			ps = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_INVENTORY_TABLE_ENTRY_COUNT));

			rs = ps.executeQuery();

			while (rs.next()) {

				Inventory inventory = new Inventory();
				inventory.setItemNo(rs.getString(1));
				inventory.setName(rs.getString(2));
				inventory.setDescription(rs.getString(3));
				inventory.setWarrentyYear(rs.getString(4));
				inventory.setAddedDate(rs.getString(5));
				inventory.setLocation(rs.getString(6));
				inventory.setStatus(rs.getString(7));
				inventory.setOwner(rs.getString(8));
				
				
				list.add(inventory);

			}

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return list;

	}
	
	@Override
	public void deleteAllItems() {
		// TODO Auto-generated method stub
		try {

			connection = DBConnectionUtil.getDBConnection();

			ps = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_DELETE_ALL_ITEMS));
			ps.execute();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	@Override
	public void deleteItemById(String itemNo) {
		// TODO Auto-generated method stub
		try {
			
			connection = DBConnectionUtil.getDBConnection();
			
			ps = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_DELETE_FROM_INVENTORY));

			ps.setString(CommonConstants.COLUMN_INDEX_ONE, itemNo);

			ps.execute();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}
	
	@Override
	public int getTotalDays(String itemNo) {
		// TODO Auto-generated method stub
		int totalDays = 0;
		try {
			
			connection = DBConnectionUtil.getDBConnection();
			stmt = (CallableStatement) connection.prepareCall(CommonConstants.QUERY_ID_GET_TOTAL_DAYS);
			stmt.setString(1, itemNo);
			stmt.registerOutParameter(2, java.sql.Types.INTEGER);
			stmt.execute();
			totalDays = stmt.getInt(2);
			

		} catch (SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (ps != null) {
					ps.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		return totalDays;
	}
	
}

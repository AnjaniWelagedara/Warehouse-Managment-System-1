package com.wms.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;


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
	@Override
	public void addItems(Inventory inventory) {
		// TODO Auto-generated method stub
				String itemNo = CommonFunctions.generateIDs(getInvetoryTableID(), CommonConstants.INVENRTORY_PREFIX);

				try {

					connection = DBConnectionUtil.getDBConnection();

					ps = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_ADD_INVENTORY_TABLE));
					connection.setAutoCommit(false);

					inventory.setItemNo(itemNo);
					ps.setString(CommonConstants.COLUMN_INDEX_ONE, classes.getClassID());
					ps.setString(CommonConstants.COLUMN_INDEX_TWO, classes.getClassName());
					ps.setString(CommonConstants.COLUMN_INDEX_THREE, classes.getYear());
					ps.setString(CommonConstants.COLUMN_INDEX_FOUR, classes.getNoOfStudents());
					ps.setString(CommonConstants.COLUMN_INDEX_FIVE, classes.getTeacher());
					ps.setString(CommonConstants.COLUMN_INDEX_SIX, classes.getHall());
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

}

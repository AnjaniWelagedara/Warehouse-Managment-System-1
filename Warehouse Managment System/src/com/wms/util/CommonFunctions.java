package com.wms.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;


public class CommonFunctions {

	private static Connection connection;
	private PreparedStatement preparedStatement;
	
	public static String generateIDs(ArrayList<String> arrayList, String prefix) {

		String id;
		int next = arrayList.size();
		next++;
		id = prefix + next;
		if (arrayList.contains(id)) {
			next++;
			id = prefix + next;
		}
		return id;
	}
	
	

}

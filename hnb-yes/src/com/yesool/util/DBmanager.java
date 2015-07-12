
package com.yesool.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBmanager {
	public static Connection getConnection(){
		Connection cn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
			cn = DriverManager.getConnection(url,"system","oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cn;
	}
}

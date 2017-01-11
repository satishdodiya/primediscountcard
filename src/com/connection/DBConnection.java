package com.connection;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnection {

	public static Connection getConnection() {
		Connection con = null;
		try {
		
			
			String Url = "jdbc:mysql://localhost:3306/primediscount";
			String User = "root";
			String Password = "root";
			
			// load the Driver Class
			Class.forName("com.mysql.jdbc.Driver");

			// create the connection now
			con = DriverManager.getConnection(Url,User,Password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
}
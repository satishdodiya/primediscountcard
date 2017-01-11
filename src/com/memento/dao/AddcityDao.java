package com.memento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.DBConnection;
import com.memento.bean.addcity;

public class AddcityDao {
	
	public static int save(addcity ct)

	{
		int status=0;
		try{  
		       // Connection con=getConnection(); 
		        Connection con = DBConnection.getConnection();
		        PreparedStatement ps=con.prepareStatement("insert into city(cityname) values(?)");  
		        ps.setString(1,ct.getCityname());  
		        
		  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  

}

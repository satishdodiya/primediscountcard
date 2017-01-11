package com.memento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.DBConnection;
import com.memento.bean.addcatagory;


public class AddcatagoryDao {
	
	public static int save(addcatagory ctg)

	{
		int status=0;
		try{  
		       // Connection con=getConnection(); 
		        Connection con = DBConnection.getConnection();
		        PreparedStatement ps=con.prepareStatement("insert into catagory(ctgname) values(?)");  
		        ps.setString(1,ctg.getCatagoryname());  
		        
		  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  

}

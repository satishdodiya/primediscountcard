package com.memento.dao;
import java.sql.*;  

import javax.servlet.RequestDispatcher;

import com.connection.DBConnection;
import com.memento.bean.Inquiry;  

public class InquiryDao {
public static int save(Inquiry n)

{
	int status=0;
	try{  
	       // Connection con=getConnection(); 
	        Connection con = DBConnection.getConnection();
	        PreparedStatement ps=con.prepareStatement("insert into inquiry(iname,iphone,iemail,icity,imsg) values(?,?,?,?,?)");  
	        ps.setString(1,n.getIname());  
	        ps.setString(2,n.getIphone()); 
	        ps.setString(3,n.getIemail());  
	        ps.setString(4,n.getIcity()); 
	        ps.setString(5,n.getImsg());  
	
	        status=ps.executeUpdate();  
	    }
	catch(Exception e){
	    	System.out.println(e);
	    			  }  
	    return status;  
	}  
  
}

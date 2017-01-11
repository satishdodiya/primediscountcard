package com.memento.dao;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import com.connection.DBConnection;
import com.memento.bean.User;  

public class UserDao {
	/*public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        //Class.forName("com.mysql.jdbc.Driver");  
	        //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/primediscount","root","root");  
	    
	    	
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  */
	public static int save(User u){  
	    int status=0;  
	    try{  
	       // Connection con=getConnection(); 
	        Connection con = DBConnection.getConnection();
	        PreparedStatement ps=con.prepareStatement(  
	"insert into marchant(Name,Businessname,City,Email,Phone,Password) values(?,?,?,?,?,?)");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getBusinessname()); 
	        ps.setString(3,u.getCity());  
	        ps.setString(4,u.getEmail()); 
	        ps.setString(5,u.getPhone());  
	        ps.setString(6,u.getPassword());  
	       
	        
	       
	         
	       
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
}

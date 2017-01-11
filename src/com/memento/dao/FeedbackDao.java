package com.memento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.DBConnection;
import com.memento.bean.Feedback;

public class FeedbackDao {

	public static int save(Feedback f){  
	    int status=0;  
	    try{  
	       // Connection con=getConnection(); 
	        Connection con = DBConnection.getConnection();
	        PreparedStatement ps=con.prepareStatement(  
	"insert into feedback(fname,fphone,fmname,fcity,fmsg) values(?,?,?,?,?)");  
	        ps.setString(1,f.getFname());  
	        ps.setString(2,f.getFphone()); 
	        ps.setString(3,f.getFmname());  
	        ps.setString(4,f.getFcity()); 
	        ps.setString(5,f.getFmsg());  
	        
	        
	       
	         
	       
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
}

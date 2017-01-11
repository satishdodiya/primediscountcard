package com.memento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.DBConnection;
import com.memento.bean.Contact;

public class ContactDao {

	public static int save(Contact c)

	{
		int status=0;
		try{  
		       // Connection con=getConnection(); 
		        Connection con = DBConnection.getConnection();
		        PreparedStatement ps=con.prepareStatement(  
		"insert into contact(cname,cemail,cdept,cphone,cmsg) values(?,?,?,?,?)");  
		        ps.setString(1,c.getCname());  
		        ps.setString(2,c.getCemail()); 
		        ps.setString(3,c.getCdept());  
		        ps.setString(4,c.getCphone()); 
		        ps.setString(5,c.getCmsg());  
		  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
	}



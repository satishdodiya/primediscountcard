<%@ page import ="java.sql.*"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.util.Date"%>
<%@page import ="java.text.SimpleDateFormat"%>

<% 

try{
    	String id2 = request.getParameter("id");
	 	String ctname = request.getParameter("citynm");    
	    String catg= request.getParameter("catagorynm");
	    String branch = request.getParameter("branchnm");    
	    String name= request.getParameter("urnm");
	    String disc = request.getParameter("discount");    
	    String condt= request.getParameter("condition");
	    String sdt = request.getParameter("startdt");    
	    String edt= request.getParameter("enddt");
	    Integer status1= 0;
	   
	  System.out.println(catg + disc);  
	    Connection con = DBConnection.getConnection();
	    String query="Update  addoffers SET city=?,catagory=?,branch=?,name=?,discount=?,cond=?,sdate=?,edate=?,status=? WHERE id=?";
	    PreparedStatement pst=con.prepareStatement(query); 
	    
	  
	    pst.setString(1,ctname);
	    pst.setString(2,catg);
	    pst.setString(3,branch);
	    pst.setString(4,name);
	    pst.setString(5,disc);
	    pst.setString(6,condt);
	    pst.setString(7,sdt);
	  	pst.setString(8,edt);
	  	pst.setInt(9,status1);
	    pst.setString(10,id2);
	    
	     pst.executeUpdate();
	    
	     response.sendRedirect("updateoffer.jsp");
	     con.close();
}
catch(SQLException e){       
   out.println(e); 
 e.printStackTrace();
		  
}      
		//return;

%>
<%@ page import ="java.sql.*"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.util.Date"%>
<%@page import ="java.text.SimpleDateFormat"%>

<% 

try{
	 	String ctname = request.getParameter("citynm");    
	    String catg= request.getParameter("catagorynm");
	    String branch = request.getParameter("branchnm");    
	    String name= request.getParameter("urnm");
	    String disc = request.getParameter("discount");    
	    String condt= request.getParameter("condition");
	    String sdt = request.getParameter("startdt");    
	    String edt= request.getParameter("enddt");
	    String status1= request.getParameter("status");
	   //  Date sd = new SimpleDateFormat("mm-dd-yyyy").parse(sdt);
	   //  Date ed = new SimpleDateFormat("mm-dd-yyyy").parse(edt);
	    
	  //    java.sql.Date sqlDate = new java.sql.Date(sd.getDate());
      //    java.sql.Date sqlDate1 = new java.sql.Date(ed.getDate());
	  
	    out.println(sdt);
	    out.println(edt);
	    out.print("test");
	  
	    Connection con = DBConnection.getConnection();
	    String query="insert into addoffers(city,catagory,branch,name,discount,cond,sdate,edate,status) values(?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst=con.prepareStatement(query); 
	    
	    pst.setString(1,ctname);
	    pst.setString(2,catg);
	    pst.setString(3,branch);
	    pst.setString(4,name);
	    pst.setString(5,disc);
	    pst.setString(6,condt);
	    pst.setString(7,sdt);
	  	pst.setString(8,edt);
	  	pst.setString(9,status1);
	    
	     pst.executeUpdate();
	     response.sendRedirect("addoffer.jsp");
	     con.close();
}
catch(SQLException e){       
   out.println(e); 
 e.printStackTrace();
		  
}      
		//return;

%>
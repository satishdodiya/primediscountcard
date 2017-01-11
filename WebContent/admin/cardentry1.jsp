<%@ page import ="java.sql.*"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.util.Date"%>
<%@page import ="java.text.SimpleDateFormat"%>

<% 

try{
	 	String name = request.getParameter("urnm");    
	    String email= request.getParameter("uremail");
	    String phone = request.getParameter("phoneno");    
	    String add= request.getParameter("address");
	    String city = request.getParameter("citynm");    
	    String date = request.getParameter("date");    
	    String year= request.getParameter("year");
	    String cardno= request.getParameter("cardno");
	  
	   // Date sd = new SimpleDateFormat("mm-dd-yyyy").parse(date);
	  
	    Connection con = DBConnection.getConnection();
	    String query="insert into verifycard(cname,cemail,cphone,cadd,ccity,cdate,cyear,cnum) values(?,?,?,?,?,?,?,?)";
	    PreparedStatement pst=con.prepareStatement(query); 
	    
	    pst.setString(1,name);
	    pst.setString(2,email);
	    pst.setString(3,phone);
	    pst.setString(4,add);
	    pst.setString(5,city);
	    pst.setString(6,date);
	    pst.setString(7,year);
	    pst.setString(8,cardno);
	  	
	    
	     pst.executeUpdate();
	     response.sendRedirect("cardentry.jsp");
	     con.close();
}
catch(SQLException e){       
   out.println(e); 
 e.printStackTrace();
		  
}      
		//return;

%>
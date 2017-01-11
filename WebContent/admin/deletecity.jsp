<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>

<% 
try{
   String citynm = request.getParameter("id");    
    Connection con = DBConnection.getConnection();
    out.print(citynm); 
  
    PreparedStatement pst = con.prepareStatement("Delete from city where id=?");
     pst.setString(1, citynm);
     pst.executeUpdate();  
    
    out.print("test"); 
    response.sendRedirect("addcity.jsp");
  }
catch(Exception e){       
   out.println("Something went wrong !! Please try again");       
}      

%>
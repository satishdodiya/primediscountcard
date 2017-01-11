<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>

<% 
try{
   String offrid = request.getParameter("id");    
    Connection con = DBConnection.getConnection();
    out.print(offrid); 
  
    PreparedStatement pst = con.prepareStatement("Delete from addoffers where id=?");
     pst.setString(1, offrid);
     pst.executeUpdate();  
    
    out.print("test"); 
    response.sendRedirect("delete.jsp");
  }
catch(Exception e){       
   out.println("Something went wrong !! Please try again");       
}      

%>
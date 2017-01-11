<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<% 
try{
     
   //Integer st=1;
   String id1=request.getParameter("id");
  // out.print(id1);
    Connection con = DBConnection.getConnection();
 
    PreparedStatement pst = con.prepareStatement("UPDATE marchant SET sts = '1'  WHERE Id = ?");
  //  out.print(id1);
     
    pst.setString(1, id1);
    pst.executeUpdate();  
 
    response.sendRedirect("merchantapprove.jsp");
}
catch(Exception e){       
   out.println("Something went wrong !! Please try again");  
		   e.printStackTrace();
}     

%>
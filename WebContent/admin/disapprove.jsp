<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<% 
try{
     
   //Integer st=1;
   String id2=request.getParameter("id2");
  // out.print(id2);
    Connection con = DBConnection.getConnection();
 
    PreparedStatement pst = con.prepareStatement("UPDATE marchant SET sts = '0'  WHERE Id = ?");
  //  out.print(id2);
     
    pst.setString(1, id2);
    pst.executeUpdate();  
   
    response.sendRedirect("merchantapprove.jsp");
}
catch(Exception e){       
   out.println("Something went wrong !! Please try again");  
		   e.printStackTrace();
}     

%>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<% try{
   String username = request.getParameter("lemail");    
    String password= request.getParameter("lPassword");
	 
   // out.println("login success"+username);

     
    Connection con = DBConnection.getConnection();
  //  out.print("test");
    PreparedStatement pst = con.prepareStatement("Select * from marchant where Email=? and Password=?");
     

    pst.setString(1, username);
    pst.setString(2, password);
    
    ResultSet rs = pst.executeQuery();  
   out.print("test");
    while(rs.next())  {   
    	String name = rs.getString(5);
        String pass = rs.getString(7);
        String name1 = rs.getString(2);
      
    	out.print("login success:"+name);
    	out.print("login success:"+pass);
    	session.setAttribute("user", name1);
    	 response.sendRedirect("../patner/index.jsp");
    	 
    }            

}
catch(Exception e){       
   out.println("Something went wrong !! Please try again");       
}      

%>
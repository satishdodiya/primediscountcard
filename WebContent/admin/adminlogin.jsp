<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<% try{
   String username = request.getParameter("adminname");    
    String password= request.getParameter("adminpass");
	 
   // out.println("login success"+username);

     
    Connection con = DBConnection.getConnection();
  //  out.print("test");
    PreparedStatement pst = con.prepareStatement("Select * from admin where ausername=? and auserpass=?");
     

    pst.setString(1, username);
    pst.setString(2, password);
    
    ResultSet rs = pst.executeQuery();  
   out.print("test");
    if(rs.next())  {   
    	String name = rs.getString(1);
        String pass = rs.getString(2);
        
        if((name.equals(username)) && (pass.equals(password)) ){
        	session.setAttribute("user", name);
        	response.sendRedirect("home.jsp"); 
     
        }
        else{
        	
        }}
        else{
        	
        	response.sendRedirect("index.jsp");
        	//out.print("kslo");
        }
           

}
catch(Exception e){       
   out.println("Something went wrong !! Please try again");       
}      

%>
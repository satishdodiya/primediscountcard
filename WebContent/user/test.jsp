<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% try{
			
				String name=(String)session.getAttribute("user"); 
			//out.print("Hello User: You have entered the name:"+name); 
			//String name="fdg";
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst1 = con.prepareStatement("Select * from marchant where Name=?");
			pst1.setString(1, name);  
			 ResultSet rs = pst1.executeQuery();                        
			 %>	   
			<% while(rs.next()){ %>
			
	     		<%=rs.getString("id") %>
	     		<%=rs.getString(4) %>
	     		
			
			 <% } %>
			 <% 
}

catch (Exception e) {
e.printStackTrace();
}
%>
			
</body>
</html>
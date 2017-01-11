<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.connection.DBConnection" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

 
try{
	Connection con = DBConnection.getConnection();
		
		PreparedStatement ps=con.prepareStatement("select * from marchant");
		 ResultSet rs=ps.executeQuery(); 
		
		/* out.print("<table width=25% border=1>");
        out.print("<center><h1>Result:</h1></center>");
                     
         Printing column names */
       
        while(rs.next())
           {
        out.print("<tr>");
       
           out.print("<td>"+rs.getString(1)+"</td></tr>");
          
           out.print("<td>"+rs.getString(2)+"</td></tr>");
           
           out.print("<td>"+rs.getString(3)+"</td></tr>");
          
           out.print("<td>"+rs.getString(4)+"</td></tr>");                  
        }
        out.print("</table>");

 }catch (Exception e2)
   {
       e2.printStackTrace();
   }
%>
</body>
</html>
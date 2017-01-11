<%@ page import ="java.sql.*"%>
<%@page import="com.connection.DBConnection"%>
<% 

try{	
	
	 	String crdnumber = request.getParameter("cardNo");  
	     
	   
	  
	    Connection con = DBConnection.getConnection();
	    PreparedStatement pst=con.prepareStatement("select * from verifycard where cnum=?"); 
	    pst.setString(1, crdnumber);
	    
	    ResultSet rs=pst.executeQuery();
	    out.println(crdnumber);
	   while(rs.next())
	    {
	    	String card=rs.getString(1);
	    	if(card==crdnumber){
	    		
	    		out.println("valid card");
	    	}
	    	else{
	    		
	    		out.println("invalid card");
	    	}
	    	
	    }
	       	//response.sendRedirect("index.jsp");
        	//out.print("kslo");
        
}
catch(SQLException e){       
   out.println(e); 
 e.printStackTrace();
		  
}      
%>	


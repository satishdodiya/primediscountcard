<%@ include file="header.jsp" %>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>
	<hr>
	<div class="container">
	<div class="col-md-12">
		<div class="col-md-2">
		   <% 
		   	 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select* from catagory");
				   
			 ResultSet rs = pst.executeQuery();                        
			 %>		   
			
  <h2>category</h2><br>
  <ul class="list-group">
  <% while(rs.next()){ %>
    <li class="list-group-item">
    
 
		 	<a href="view.jsp?catagory=<%= rs.getString(2)%>"> 	<%= rs.getString(2)%>   </a>
			
			 <% } %>	
    </li>
 
  </ul>

</div>
	<div class="col-md-10">
	<div class="col-md-2"></div>
		<form class="form-inline">
    <div class="form-group">
    <% 
			 Connection con3 = DBConnection.getConnection();
			 PreparedStatement pst3 = con3.prepareStatement("Select* from city");
				   
			 ResultSet rs3 = pst3.executeQuery();                        
			 %>	
      <label for="email">City:</label>
      <select name="city" class="selectpicker show-tick" data-live-search="true">
      <% while(rs3.next()){ %>
				<option data-tokens="Jobs"><a href="view1.jsp?cityname=<%= rs3.getString(2)%>"> 	<%= rs3.getString(2)%>   </a>
							
							<% } %>	
							</option>								

									</select>
    </div>
    <div class="form-group">
      <label for="pwd">Category:</label>
      <% 
			 Connection con2 = DBConnection.getConnection();
			 PreparedStatement pst2 = con2.prepareStatement("Select* from catagory");
				   
			 ResultSet rs2 = pst2.executeQuery();                        
			 %>	
					
					<select name="catagory" class="selectpicker show-tick" data-live-search="true">
						 <% while(rs2.next()){ %>
						<option data-tokens="Jobs"><a href="view1.jsp?catagory=<%= rs2.getString(2)%>"> 	<%= rs2.getString(2)%>   </a>
			
			 <% } %>
			 </option>
						
					</select>
    </div>
    
    <button type="submit" class="btn btn-default">Search</button>
    
  </form>
<hr>

</div>
<div class="col-md-10" style="border:1px red solid;height:500px;">
<% 

             
             String citynm=request.getParameter("city");
			 String ctgnm1=request.getParameter("catagory");
             
			 Connection con1 = DBConnection.getConnection();
			 PreparedStatement pst1 = con1.prepareStatement("Select * from addoffers where city=? and catagory=?");
			 pst1.setString(1,citynm);
			 pst1.setString(2,ctgnm1);
			 
			 ResultSet rs1 = pst1.executeQuery();                        
			 %>		   
			
<table>
<tr>
 <% while(rs1.next()){ %>
<td>
<a > 

<div class="col-md-12" style="border:1px green solid;height:100px; margin-top:10px; background-color:#E9967A; border-radius:5px; float:left;">
		        
		              City:<span class="label label-primary"><%= rs1.getString(2)%></span>
		              Catagory:<span class="label label-primary"><%= rs1.getString(3)%></span>
		              Branch:<span class="label label-primary"><%= rs1.getString(4)%></span>
		              Name:<span class="label label-primary"><%= rs1.getString(5)%></span>
		              Discount:<span class="label label-primary"><%= rs1.getString(6)%></span>
		              Condition:<span class="label label-primary"><%= rs1.getString(7)%></span>
		              From:<span class="label label-primary"><%= rs1.getString(8)%></span>
		              To:<span class="label label-primary"><%= rs1.getString(9)%></span>   
		               </br>    
		                
		       </div>

 </a>
			
			 <% } %>	

</td>

</tr>


</table>

</div>


</div>
</div>
	
	<%@ include file="footer.jsp" %>
	
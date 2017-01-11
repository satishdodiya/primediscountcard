
	
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
<div class="col-md-10" style="border:1px red solid;height:550px; border-radius:5px;">


<%
     String a=request.getParameter("catagory");
//String b=request.getParameter();
//String catagory="hotel";


			 Connection con1 = DBConnection.getConnection();
			 PreparedStatement pst1 = con1.prepareStatement("SELECT * from addoffers where catagory=?");
			 pst1.setString(1,a);   
				//pst1.setString(2, b); 
			 ResultSet rs1 = pst1.executeQuery();     
			 
				%>
				
				  <%  while(rs1.next()){ %>
		           <div class="col-md-12" style="border:1px green solid;height:200px; margin-top:10px; background-color:#014D4D; border-radius:5px; float:left;">
		        	<div class="col-md-2" style="height:175px; background-color:black; border-radius:5px; margin-top:10px;">
		        	
		        	
		        	
		        	</div>
		        	
		        	
		        	<div class="col-md-4">
		        	<table class="table">
		        	<tbody>
		        	<tr>
		              <td>City:</td>
		              <td><span class="label label-primary"><%= rs1.getString(2)%></span></td>
		              </tr>
		              <tr>
		              <td>Catagory:</td>
		              <td><span class="label label-primary"><%= rs1.getString(3)%></span></td>
		              </tr>
		              <tr>
		              <td>Branch:</td>
		              <td><span class="label label-primary"><%= rs1.getString(4)%></span></td>
		              </tr>
		              <tr>
		              <td>Name:</td>
		              <td><span class="label label-primary"><%= rs1.getString(5)%></span></td>
		              </tr>
		              </tbody>
		              </table>
		              </div>
		              
		              <div class="col-md-6">
		        	<table class="table">
		        	<tbody>
		        	<tr>
		              <td>Discount:</td>
		              <td><span class="label label-primary"><%= rs1.getString(6)%></span></td>
		              </tr>
		              <tr >
		              <td >Address:</td>
		              <td ><p class="label-primary"><%= rs1.getString(7)%></p></td>
		              </tr>
		              <tr>
		              <td>From:</td>
		              <td><span class="label label-primary"><%= rs1.getString(8)%></span></td>
		              </tr>
		              <tr>
		              <td>To:</td>
		              <td><span class="label label-primary"><%= rs1.getString(9)%></span></td>
		              </tr>
		              </tbody>
		              </table>
		              </div>
		                
		       </div>
		   
			  <% } %>
 
 </div>



</div>
</div>
	
	<%@ include file="footer.jsp" %>
	
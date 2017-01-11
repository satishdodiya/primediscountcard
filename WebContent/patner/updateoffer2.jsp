<%@ include file="pheader.jsp" %>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>

<style>
label{font-weight: bold;}
.vert{height: 20px;}
</style>
<br><br>
	<div class="row">
		<div class="col-sm-8">
			<h1 class="center">Update Offer</h1>		
			<hr>			
			<% 
			String Id=request.getParameter("id");
			 Connection con2 = DBConnection.getConnection();
			 PreparedStatement pst2 = con2.prepareStatement("Select * from addoffers where id=?");
				 pst2.setString(1, Id);	   
			 ResultSet rs2 = pst2.executeQuery();                        
						   
			while(rs2.next()){ %>
			<form  role="form" action="updateoffer3.jsp?id=<%=rs2.getString(1)%>" method="post">
			

			
		<div class="form-group">	
		<label class="col-sm-2">City Name:</label>	
		<div class="col-sm-10">

	<select class="form-control" id="form-field-select-2" name="citynm"  multiple="multiple">
			<% 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select * from city");
				   
			 ResultSet rs = pst.executeQuery();                        
						   
			while(rs.next()){ %>
			<option  >
	     		<%= rs.getString(2)%>
			</option>
			 <% } %>	
	    		</select>
					</div>	</div>
		<div class="col-sm-12 vert"></div>
		
<br>
<div class="form-group">	
		<label class="col-sm-2">category Name:</label>	
		<div class="col-sm-10">
	<select class="form-control"  name="catagorynm"  id="form-field-select-2" multiple="multiple">
	<% 
			 Connection con1 = DBConnection.getConnection();
			 PreparedStatement pst1 = con.prepareStatement("Select * from catagory");
				   
			 ResultSet rs1 = pst1.executeQuery();                        
						   
			while(rs1.next()){ %>
			<option >
	     		<%= rs1.getString(2)%>
			</option>
			 <% } %>	
	
	
																
																
	</select>
	</div>	</div>
	<div class="col-sm-12 vert"></div>
<br>
<div class="form-group ">
<label class="col-sm-2 ">Branch Name:</label>
		<div class="col-sm-10">
		<input type="text"  name="branchnm" value="<%= rs2.getString(4)%>"  class="form-control" />
	</div></div>
	<div class="col-sm-12 vert"></div>
	
<div class="form-group">
<label class="col-sm-2">Name:</label>
	<div class="col-sm-10">
		<input type="text"  name="urnm"  value="<%= rs2.getString(5)%>" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>
	
<div class="form-group">
	<label class="col-sm-2">Discount:</label>
			<div class="col-sm-10">
				<input type="number"  name="discount" value="<%= rs2.getString(6)%>" class="form-control" />
		</div>
	</div>
	<div class="col-sm-12 vert"></div>

	
				<div class="form-group">
				<label class="col-sm-2" for="form-field-8">Condition:-</label>
<div class="col-sm-10">
			<textarea class="form-control" name="condition" id="form-field-8" placeholder="write condition here"><%= rs2.getString(7)%></textarea>									<hr />
</div></div>

<div class="form-group">
	<label class="col-sm-2">Start Date:</label>
			<div class="col-sm-4">
				<input type="date" name="startdt" value="<%= rs2.getString(8)%>" class="form-control" />
	 </div>
</div>

<div class="form-group">
	<label class="col-sm-2">End Date:</label>
			<div class="col-sm-4">
				<input type="date" name="enddt" value="<%= rs2.getString(9)%>" class="form-control" />
	 </div>
</div>

	<div class="col-sm-12 vert"></div>

<label class="col-sm-2"></label>

<div class="col-sm-10">

<a href="%>"><input type="submit" class="btn btn-danger btn-block"></a>
</div>

</form>

<%} %>
</div></div>
<div class="col-sm-12 vert"></div>		
<%@ include file="pfooter.jsp" %>


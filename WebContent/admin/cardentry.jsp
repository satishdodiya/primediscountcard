<%@ include file="adminheader.jsp" %>
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
			<h1 class="center">Card Details</h1>		
			<hr>			
			<form  role="form" action="cardentry1.jsp" method="post">
			<div class="form-group">
<label class="col-sm-2">Name:</label>
	<div class="col-sm-10">
		<input type="text"  name="urnm" placeholder="Enter Your Name:" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>
	
	<div class="form-group">
<label class="col-sm-2">Email:</label>
	<div class="col-sm-10">
		<input type="email"  name="uremail" placeholder="Enter Your Email:" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>
	
	<div class="form-group">
<label class="col-sm-2">Phone No.:</label>
	<div class="col-sm-10">
		<input type="number"  name="phoneno" placeholder="Enter Your Phone Number:" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>
	
	<div class="form-group">
	<label class="col-sm-2" for="form-field-8">Address:-</label>
	<div class="col-sm-10">
	<textarea class="form-control" name="address" id="form-field-8" placeholder="Enter Address Here"></textarea>									<hr />
</div>
</div>
<div class="col-sm-12 vert"></div>
			
			
		<div class="form-group">	
		<label class="col-sm-2">City Name:</label>	
		<div class="col-sm-10">

	<select class="form-control" id="form-field-select-2" name="citynm" multiple="multiple">
			<% 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select* from city");
				   
			 ResultSet rs = pst.executeQuery();                        
						   
			while(rs.next()){ %>
			<option  >
	     		<%= rs.getString(2)%>
			</option>
			 <% } %>	
	    		</select>
					</div>	</div>
		<div class="col-sm-12 vert"></div><br>
		
		<div class="form-group">
	<label class="col-sm-2"> Date:</label>
			<div class="col-sm-4">
				<input type="date" name="date" placeholder="Enter Date:" class="form-control" />
	 </div>
</div>
<div class="col-sm-12 vert"></div>


<div class="form-group">
<label class="col-sm-2">Year:</label>
	<div class="col-sm-10">
		<input type="number"  name="year" placeholder="Enter Year:" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>
	
	<div class="form-group">
<label class="col-sm-2">Card No.:</label>
	<div class="col-sm-10">
		<input type="number"  name="cardno" placeholder="Enter Your Card Number:" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>

<label class="col-sm-2"></label>
<div class="col-sm-10">
<button class="btn btn-danger btn-block" >Submit</button>
</div>


</form>
</div></div>
<div class="col-sm-12 vert"></div>		
<%@ include file="adminfooter.jsp" %>


<%@ include file="pheader.jsp" %>
<style>
label{font-weight: bold;}
.vert{height: 20px;}
</style>
<br><br>
	<div class="row">
		<div class="col-sm-8">
			<h1 class="center">Add Branch</h1>		
			<hr>			
			<form  role="form">
		<div class="form-group">	
		<label class="col-sm-2">City Name:</label>	
		<div class="col-sm-10">
	<select class="form-control" id="form-field-select-2" multiple="multiple">
																<option value="AL">Alabama</option>
																<option value="AK">Alaska</option>
																<option value="AZ">Arizona</option>
																<option value="AR">Arkansas</option>
																<option value="CA">California</option>
												<option value="WI">Wisconsin</option>
																<option value="WY">Wyoming</option>
															</select>
														</div>	</div>
														<div class="col-sm-12 vert"></div>
<br>
<div class="form-group ">
<label class="col-sm-2 ">Branch Name:</label>
		<div class="col-sm-10">
		<input type="text"  placeholder="Enter Branch Name:" class="form-control" />
	</div></div>
	<div class="col-sm-12 vert"></div>
	
<div class="form-group">
<label class="col-sm-2">Branch Mobile:</label>
	<div class="col-sm-10">
		<input type="text"  placeholder="Enter Branch Name:" class="form-control" />
	</div>
</div>	

	<div class="col-sm-12 vert"></div>
	
<div class="form-group">
	<label class="col-sm-2">Branch Email:</label>
			<div class="col-sm-10">
				<input type="text"  placeholder="Enter Branch Name:" class="form-control" />
		</div>
	</div>
	<div class="col-sm-12 vert"></div>
<div class="form-group">
<label class="col-sm-2">Branch Address:</label>
		<div class="col-sm-10">
		<input type="text"  placeholder="Enter Branch Name:" class="form-control" />
	</div></div>
	<div class="col-sm-12 vert"></div>		
				<div class="form-group">
				<label class="col-sm-2" for="form-field-8">Address:-</label>
<div class="col-sm-10">
			<textarea class="form-control" id="form-field-8" placeholder="Default Text"></textarea>									<hr />
</div></div>
<label class="col-sm-2"></label>
<div class="col-sm-10">
<button class="btn btn-danger btn-block">Submit</button>
</div>
</form>
</div></div>
<div class="col-sm-12 vert"></div>		
<%@ include file="pfooter.jsp" %>


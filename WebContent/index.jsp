<%@ include file="header.jsp" %>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>

		<div class="slider">
			<ul class="rslides" id="slider">
				<li>
					<div class="w3ls-slide-text">
						<h3>Sell or Advertise anything online</h3>
						<a href="categories.html" class="w3layouts-explore-all">Browse all Categories</a>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Find the Best Deals Here</h3>
						<a href="categories.html" class="w3layouts-explore">Explore</a>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Lets build the home of your dreams</h3>
						<a href="real-estate.html" class="w3layouts-explore">Explore</a>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Find your dream ride</h3>
						<a href="bikes.html" class="w3layouts-explore">Explore</a>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>The Easiest Way to get a Job</h3>
						<a href="jobs.html" class="w3layouts-explore">Find a Job</a>
					</div>
				</li>
			</ul>
		</div>
		
		<form  role="form" action="search.jsp" method="post">
		<div class="container">
			<div class="select-box">
				<div class="select-city-for-local-ads ads-list">
					
			<% 
			 Connection con2 = DBConnection.getConnection();
			 PreparedStatement pst2 = con2.prepareStatement("Select* from city");
				   
			 ResultSet rs2 = pst2.executeQuery();                        
			 %>	

						<label>Select your city to see local ads</label>
						<select name="city">
						<% while(rs2.next()){ %>
						<option data-tokens="Jobs"><a href="view1.jsp?cityname=<%= rs2.getString(2)%>"> 	<%= rs2.getString(2)%>   </a>
							
							<% } %>	
							</option>				
									</select>
				</div>
				
				<div class="browse-category ads-list">
				<% 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select* from catagory");
				   
			 ResultSet rs = pst.executeQuery();                        
			 %>	
					<label>Browse Categories</label>
					<select name="catagory" class="selectpicker show-tick" data-live-search="true">
						 <% while(rs.next()){ %>
						<option data-tokens="Jobs"><a href="view1.jsp?catagory=<%= rs.getString(2)%>"> 	<%= rs.getString(2)%>   </a>
			
			 <% } %>
			 </option>
						
					</select>
				</div>
				
				<div class="search-product ads-list">
					<label>Search for a specific product</label>
					<div class="search">

						<div class="input-group">
							<input type="submit" class="form-control" value="search"/>

						</div>

					</div>
				</div>
				
				<div class="clearfix"></div>
			</div>

	</div>
	</form>
		<!-- //Slider -->
		<!-- content-starts-here -->
		<div class="main-content">
			<div class="w3-categories">
				<h3>Browse Categories</h3>
				<% 
			 Connection con1 = DBConnection.getConnection();
			 PreparedStatement pst1 = con1.prepareStatement("Select* from catagory");
				   
			 ResultSet rs1 = pst1.executeQuery();                        
			 %>		   
			
				
				<div class="container">
				<% while(rs1.next()){ %>
				<div class="col-md-3">
						<div class="focus-grid w3layouts-boder1">
							<a class="btn-8" href="categories.html">
								<div class="focus-border">
									<div class="focus-layout">
										<div class="focus-image"><i class="fa fa-mobile"></i></div>
										<h4 class="clrchg">
										
										<a href="view.jsp?catagory=<%= rs1.getString(2)%>"> 	<%= rs1.getString(2)%>   </a>
			
			 
										</h4>
									</div>
								</div>
							</a>
						
						</div>
						
					</div>
						<% } %>
					
					<div class="clearfix"></div>
				</div>
			</div>
			</div>
			
			<!-- most-popular-ads -->
			
			
			<marquee direction="left">
			<div class="container">
			<div class="col-md-4">
						<div class="focus-grid w3layouts-boder1">
							<a class="btn-8" href="categories.html">
								<div class="focus-border">
									<div class="focus-image"><img src="images/Adidas1.png" /></div>
								</div>
							</a>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="focus-grid w3layouts-boder1">
							<a class="btn-8" href="categories.html">
								<div class="focus-border">
									<div class="focus-image"><img src="images/Nike.png" /></div>
								</div>
							</a>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="focus-grid w3layouts-boder1">
							<a class="btn-8" href="categories.html">
								<div class="focus-border">
									<div class="focus-image"><img src="images/nike3.png" /></div>
								</div>
							</a>
						</div>
					</div>
					</div>
					</marquee>

			<img src="images/">
		<%@ include file="footer.jsp" %>

	
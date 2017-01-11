<%@ include file="adminheader.jsp" %>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>
						<div class="page-header">
							<h1>
								City
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->
						
					<form id="filldetails" action="insert/addcityinsert.jsp" method="post">
					  <div class="field name-box">
							
							<label>CityName:</label>
							<input type="text" name="cityname" placeholder="Enter CityName"/>
							<input class="button" type="submit" value="Add" />
					  </div>
					  
<div class="col-xs-4">
 <table class="table table-bordered">
    <thead>
      <tr>
        <th>CityName</th>
        <th>Delete</th>
       </tr>
    </thead>
    <tbody>
      
      <% 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select* from city");
				   
			 ResultSet rs = pst.executeQuery();   
      		 while(rs.next()){ %>
        <tr>
        <td><%= rs.getString(2)%></td>
        
        <td><a href="deletecity.jsp?id=<%= rs.getInt(1)%>">Delete</a></td>
        <% } %>
        </tr>
      
    </tbody>
  </table>
</div>
					  
					  </form>


						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
					

								

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

		<%@ include file="adminfooter.jsp" %>
		

<%@ include file="pheader.jsp" %>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>

<div class="row">
							<div class="col-xs-10">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-10">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th>Id</th>
													<th>City</th>
													<th>Catagory</th>
													<th>Branch</th>
													<th>Name</th>
													<th>Discount</th>
													<th>Condition</th>
													<th>SDate</th>
													<th>EDate</th>
													
													
													</tr>
											
											</thead>
											
											<tbody>
											
											<% 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select* from addoffers");
				   
			 ResultSet rs = pst.executeQuery();   
      		 while(rs.next()){ %>
											
												<tr>
													<td>
														<%= rs.getString(1)%>
													</td>
													<td>
														<%= rs.getString(2)%>
													</td>
													<td>
														<%= rs.getString(3)%>
													</td>
													<td>
														<%= rs.getString(4)%>
													</td>
													<td>
														<%= rs.getString(5)%>
													</td>
													<td>
														<%= rs.getString(6)%>
													</td>
													<td>
														<%= rs.getString(7)%>
													</td>
													<td>
														<%= rs.getString(8)%>
													</td>
													<td>
														<%= rs.getString(9)%>
													</td>
													
													 <% } %>
													</tr>
													</tbody>
											
											
											</table>
											</div>
											</div>
											</div>
											</div>


<%@ include file="pfooter.jsp" %>
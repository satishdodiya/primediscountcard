<%@ include file="adminheader.jsp" %>
<%@ page import ="java.sql.*" %>
<%@page import="com.connection.DBConnection"%>
<%@ page import="java.sql.ResultSet" %>

<div class="page-header">
							<h1>
								Feedback
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->
						
					


						<div class="row">
							<div class="col-xs-10">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-10">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													
													<th>FName</th>
													<th>FPhone</th>
													<th>FmName</th>
													<th>FCity</th>
													<th>FMsg</th>
													</tr>
											
											</thead>
											
											<tbody>
											
											<% 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement pst = con.prepareStatement("Select* from feedback");
				   
			 ResultSet rs = pst.executeQuery();   
      		 while(rs.next()){ %>
											
												<tr>
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
													
													
													 <% } %>
													</tr>
													</tbody>
											
											
											</table>
											</div>
											</div>
											</div>
											</div>




<%@ include file="adminfooter.jsp" %>
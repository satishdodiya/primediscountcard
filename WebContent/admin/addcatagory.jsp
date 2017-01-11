<%@ include file="adminheader.jsp" %>

						<div class="page-header">
							<h1>
								Category
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->
						
					<form id="filldetails" action="insert/addcatagoryinsert.jsp" method="post">
					  <div class="field name-box">
							
							<label>Catagory:</label>
							<input type="text" name="catagoryname" placeholder="Enter Catagory"/>
							<input class="button" type="submit" value="Add" />
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

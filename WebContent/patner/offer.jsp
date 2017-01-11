
<%@ include file="pheader.jsp" %>

	<div class="row">
	<div class="col-lg-8 col-lg-offset-1 offer">
	<a href="addoffer.jsp" class="btn btn-app btn-primary no-radius">
											<i class="ace-icon fa fa-plus-circle bigger-230"></i>
											Add Offer
											<span class="badge badge-warning badge-left"></span>
										</a>	
										<a href="updateoffer.jsp" class="btn btn-app btn-primary no-radius">
											<i class="ace-icon fa fa-pencil-square-o bigger-230"></i>
											Edit Offer
											<span class="badge badge-warning badge-left"></span>
										</a>	
										<a href="delete.jsp" class="btn btn-app btn-danger no-radius">
											<i class="ace-icon fa fa-trash-o  bigger-230"></i>
											Delete
											<span class="badge badge-warning badge-left"></span>
										</a>
									<a href="viewoffer.jsp" class="btn btn-app btn-success no-radius">
											<i class="ace-icon fa fa-eye  bigger-230"></i>
											View
											<span class="badge badge-warning badge-left"></span>
										</a>
									
									</div>
	<div class="col-xs-8 col-sm-6 widget-container-col" id="widget-container-col-2">
											<div class="widget-box widget-color-blue" id="widget-box-2">
												<div class="widget-header">
													<h5 class="widget-title bigger lighter">
														<i class="ace-icon fa fa-table"></i>
														Tables & Colors
													</h5>

												
												<table class="table table-responsive">
    <thead>
      <tr>
        <th>Offer Name</th>
        <th>%</th>
        <th>City</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>10</td>
        <td>Rajkot</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>2%</td>
        <td>Junagadh</td>
      </tr>
      <tr>
        <td>memento</td>
        <td>12%</td>
        <td>dubai</td>
      </tr>
    </tbody>
  </table>

													</div>
												</div>	</div>
												</div>
<%@ include file="pfooter.jsp" %>
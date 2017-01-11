<%@ include file="pheader.jsp" %>
<%@ page import ="java.sql.*"%>
<%@page import="com.connection.DBConnection"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
	<script src="http://cloud.github.com/downloads/digitalBush/jquery.maskedinput/jquery.maskedinput-1.3.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('select[name="cardType"]').change(function(){
			var mask = $(this).val()=="visa" ? "9999-9999-9999-9999" : "9999-9999-9999-9999"
			$(':input[name="cardNo"]').unmask().mask(mask)
		}).trigger('change')
	});
</script>
<style type="text/css">
	input{ font-family: monospace; }
</style>
	<div class="row">
									<div class="col-sm-5 col-md-offset-2">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="widget-title">Card Verify</h4>
											</div>
<div class="widget-body">
												<div class="widget-main no-padding">
													
														<!-- <legend>Form</legend> -->
														<fieldset>
															

															
															<form action="verifycard.jsp" method="post">
															<select name="cardType"><option>Verify Card</option></select>
															<label><input name="cardNo" type="text" /></label>
														
															<span class="help-block">1234-5678-9012-3456</span>

															

														<div class="form-actions center">
															<input type="submit" class="btn btn-sm btn-success">
																
																<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
														</div>
														</form>
													</fieldset>
														
													</div></div>
												</div>
											</div>
										</div>

<%@ include file="pfooter.jsp" %>


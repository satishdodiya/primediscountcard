<%@ include file="pheader.jsp" %>
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
													<form action="verifycard.jsp">
														<!-- <legend>Form</legend> -->
														<fieldset>
															

															
														
<select name="cardType"><option>Verify Card</option></select><label><input name="cardNo" type="text" /></label>
</form>
															<span class="help-block">1234-5678-9012-3456</span>

															
														</fieldset>

														<div class="form-actions center">
															<button type="button" class="btn btn-sm btn-success" data-toggle = "modal" data-target = "#myModal">
																Submit
																<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
															</button>
														</div>
													</form>
												</div>
											</div>
										</div>

<%@ include file="pfooter.jsp" %>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
       <% out.print("valid customer");%>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
	<%@ include file="header.jsp" %>
	
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.jsp"><i class="fa fa-home home_1"></i></a> / <span>Feedback</span></span>
		</div>
	</div>

  <div class="container ">
  <h1 class="text-center">Feedback Form</h1><br><hr>
  <div class="col-md-2"></div>
  <div class="col-md-10">
    <form class="form-horizontal" action="user/feedbackinsert.jsp" methode="post">

      <div class="form-group">
        <div class="col-sm-1">
        <label for="focusedinput" class=" control-label">Name:</label></div>
        <div class="col-sm-8">
          <input type="text" name="fname" class="form-control1" id="focusedinput" placeholder="Enter Your Good Name:-">
        </div>

      </div>
      <div class="form-group">
        <div class="col-sm-1">
        <label for="phone" class=" control-label">Phone:</label></div>
        <div class="col-sm-8">
          <input  type="text" name="fphone" class="form-control1" id="disabledinput" placeholder="Enter Mobile Number:-">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-1">
        <label for="inputPassword" class=" control-label">Email</label></div>
        <div class="col-sm-8">
          <input type="password" name="femail" class="form-control1" id="inputPassword" placeholder="Enter Your Email:-">
        </div>
      </div>  <div class="form-group">
          <div class="col-sm-1">
          <label for="inputPassword" class=" control-label">Marchant Name:</label></div>
          <div class="col-sm-8">
            <input type="text" name="fmname" class="form-control1" id="inputPassword" placeholder="Marchant Name:-">
          </div>
        </div>
      <div class="form-group">
        <div class="col-sm-1">
                    <label for="selector1" class=" control-label">City </label></div>
                    <div class="col-sm-8"><select name="fcity" id="selector1" class="form-control1">
                      <option value="rajkot">Rajkot</option>
                      <option>Junagadh</option>
                      <option>Morbi</option>
                      <option>Surat</option>
                    </select></div>
                  </div>
                  <div class="form-group">

                  <div class="col-sm-1">
                      <label for="txtarea1"  class=" control-label">Message:-</label></div>
                      <br>
                        <div class="col-sm-8"><textarea name="fmsg" id="txtarea1" cols="4" rows="8" class="form-control1"></textarea></div>
                  </div>

                  <div class="form-group">
                  <div class="col-sm-1"></div>

                        <div class="col-sm-8"><input type="submit" value="submit" class="form-control btn btn-success"></div>
                  </div>
      </div>


</form>
    </div>
  </div>

<%@ include file="footer.jsp" %>


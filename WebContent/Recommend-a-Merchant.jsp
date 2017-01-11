	<%@ include file="header.jsp" %>
	
	 <section>
		<div id="agileits-sign-in-page" class="sign-in-wrapper">
			<div class="agileinfo_signin">
			<h3>Sign Up</h3>
				<form action="user/adduser.jsp" method="post">
					<input type="text" name="name" placeholder="Your Name" required="">
          <input type="text" name="businessname" placeholder="Business Name" required="">
            <input type="text" name="city" placeholder="City" required="">
					<input type="email" name="email" placeholder="Your Email" required="">
					<input type="tel" name="phone" placeholder="Mobile" required="">
					<input type="password" name="password" placeholder="Password" required="">
					
          <div class="signin-rit">
						
					</div>
					<input type="submit" value="Sign Up">
				</form>
			</div>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
	
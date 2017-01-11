<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - Prime Discount Card Admin</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="index.html" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Prime Discount Card Admin
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
				<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									<%
	if ((session.getAttribute("user") != null)) {%>
                <% out.println(session.getAttribute("user")); }
                      		else {
				response.sendRedirect("admin/index.jsp");
                      		}%>
	
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="logout.jsp">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				
				<ul class="nav nav-list">
					<li class="active">
						<a href="index.html">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> Dashboard </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								 Partner's Approval
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="merchantapprove.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
										Approve
								</a>
								</li>

							<li class="">
								<a href="merchantview.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									View All Partners
								</a>

								<b class="arrow"></b>
							</li>
					
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> Offer Approval </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="offerapprove.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									Approve
								</a>

								<b class="arrow"></b>
							</li>

							
							<li class="">
								<a href="viewoffers.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									View All Offers
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> Card Activation </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="form-elements.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Activate
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="form-elements-2.html">
									<i class="menu-icon fa fa-caret-right"></i>
									DeActivate
								</a>

								<b class="arrow"></b>
							</li>
	
						</ul>
					</li>

					<li class="">
						<a href="cardentry.jsp">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text"> Card Entry </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="addcity.jsp">
							<i class="menu-icon fa fa-calendar"></i>

							<span class="menu-text">
								Add City
							 </span>
						</a>
					</li>

					<li class="">
						<a href="addcatagory.jsp">
							<i class="menu-icon fa fa-picture-o"></i>
							<span class="menu-text"> Add Catagory </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="feedbackview.jsp" >
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text">Feedback </span>
							</a>
					</li>

					<li class="">
						<a href="contact.jsp">
							<i class="menu-icon fa fa-file-o"></i>

							<span class="menu-text">
								Contact Us
							</span>
							</a>
					</li>
					
					<li class="">
						<a href="#">
							<i class="menu-icon fa fa-calendar"></i>

							<span class="menu-text">
								Buy Card
							 </span>
						</a>
					</li>

					
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text">Reports </span>
							<b class="arrow fa fa-angle-down"></b>
							</a>
							
								<b class="arrow"></b>
						<ul class="submenu">
							<li class="">
								<a href="tables.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Buy Card
								</a>

								<b class="arrow"></b>
							</li>

							
							<li class="">
								<a href="contact.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									Contact US
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="feedbackview.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									Feedback
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="viewoffers.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									Total Offers
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="merchantview.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									Business Partners
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="tables.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Active Customers
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="tables.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Get Discount
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#">
							<i class="menu-icon fa fa-file-o"></i>

							<span class="menu-text">
								Analysis
							</span>
							</a>
					</li>
				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Dashboard</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

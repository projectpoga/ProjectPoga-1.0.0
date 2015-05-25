<!doctype html>

<%@include file="/WEB-INF/pages/jspf/envsetup.jspf"%>
<html lang="en">
	<head>

		<!-- title -->
		<title>Refers | Refer Jobs Earn Rewards - Apply jobs | Job Referal Portal</title>

		<!-- Meta TAGS -->
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

	    <!-- Google Fonts -->
	    <link href='http://fonts.googleapis.com/css?family=Raleway:400,700,600' rel='stylesheet' type='text/css'>
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	    <link href='http://fonts.googleapis.com/css?family=Josefin+Sans:400,700' rel='stylesheet' type='text/css'>

		<!-- Favicon -->

		<!-- Bootstrap.min.css -->
		<link href="<c:url value="/resources/includes/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
		<!-- Slick CSS -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/includes/css/slick.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/includes/css/slick-theme.css"/>"/>

		<!-- Font Awesome CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

		<!-- Animate.css -->
		<link href="<c:url value="/resources/includes/css/animate.css"/>" rel="stylesheet" type="text/css">

		<!-- style.css -->
                <link href="<c:url value="/resources/includes/css/logged.css"/>" rel="stylesheet" type="text/css" >
		<link href="<c:url value="/resources/includes/css/style-login.css"/>" rel="stylesheet" type="text/css" >
		<link href="<c:url value="/resources/includes/css/style-home.css"/>" rel="stylesheet" type="text/css" >

		<!-- jQuery 1.11.2 Plugin -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="<c:url value="/resources/includes/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resources/includes/js/html5shiv.min.js"/>" type="text/javascript"></script>
		<script src="<c:url value="/resources/includes/js/respond.min.js"/>" type="text/javascript"></script>
	</head>
	<body>

		<!-- Categories Side Bar -->
		<div class="dullness"></div>
		<div class="navholder">
                    <nav class="navbar navbar-default navbar-fixed-top">
					<div class="container">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">TalentVouch<small class="hidden-xs hidden-sm">.com</small><sup>Beta</sup></a>
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-home">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>	
							</button>
						</div>
						<div class="collapse navbar-collapse" id="navbar-home">
							<ul class="nav navbar-nav navbar-right">
								<li class="active">
									<a href="#">Home<span class="hover"></span></a>
								</li>
								<li>
									<a href="#">How it Works<span class="hover"></span></a>
								</li>
								<li>
									<a href="jobs.htm">Jobs<span class="hover"></span></a>
								</li>
								<li>
									<a href="#SignIn" id="signin">Sign In<span class="hover"></span></a>
								</li>
								<li>
									<a href="#" id="employers-zone">Employers<span class="hover hidden-sm hidden-md hidden-lg"></span></a>
								</li>
							</ul>
						</div>
					</div>
				</nav><!-- Responsive Navbar end -->
		</div>
		<%@include file="/WEB-INF/pages/jsp/login.jsp"%>
		<div class="wrap sb-open">
			<!-- Responsive Navbar -->
			<div id="carousel-holder">
				<div class="background-carousel container">
	                <div class="carousel slide fade" id="slideshow-carousel" data-ride="carousel" data-interval="5000">
	                    <div class="carousel-inner">
	                        <div class="item active" id="item-1">
	                        </div>
	                        <div class="item" id="item-2">
	                        </div>
	                        <div class="item" id="item-3">
	                        </div>
	                        <div class="item" id="item-4">
	                        </div>
	                        <div class="item" id="item-5">
	                        </div>
	                    </div>
	                </div>
	            </div>
				<div id="welcome">
					<div class="container" id="welcome-body">
						<h1 class="text-center intro-title">Welcome to <b>TalentVouch</b><small>.com</small></h1>
						<p class="text-center">Refer your peers, we vouch you with rewards!</p>
						<form method="" action="" id="job-search-form">
							<div class="input-group" id="job-search-body">
								<input type="text" class="form-control" placeholder="Search Job..." autofocus>
								<span class="input-group-btn">
									<button class="btn btn-default" type="button" id="search-btn"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</form>
						<div class="row" id="flow-chart">
							<div class="flow-line-md hidden-xs wow fadeIn" data-wow-duration="3s" data-wow-delay="3s"></div>
							<div class="flow-line-sm hidden-xs hidden-md hidden-lg wow fadeIn"></div>
							<div class="flow-line-sm hidden-xs hidden-md hidden-lg wow fadeIn" id="flow-line-2"></div>
							<div class="col-sm-12 col-md-6">
								<div class="col-sm-6 col-md-6">
									<div class="flow wow fadeInLeft" data-wow-delay="1s">
									</div>
									<h3 class="flow-title text-center wow fadeInUp" data-wow-delay="1s">Sign Up</h3>
									<div class="arrow hidden-xs wow rollIn" data-wow-delay="1.25s"><i class="fa fa-chevron-right"></i></div>
								</div>
								<div class="col-sm-6 col-md-6" data-wow-delay="1.75s">
									<div class="flow wow fadeInLeft" data-wow-delay="1.75s">
									</div>
									<h3 class="flow-title text-center wow fadeInUp" data-wow-delay="1.75s">Find Jobs</h3>
									<div class="arrow hidden-xs hidden-sm wow rollIn" data-wow-delay="2s" id="ar-2"><i class="fa fa-chevron-right"></i></div>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="col-sm-6 col-md-6">
									<div class="flow wow fadeInLeft" data-wow-delay="2.5s">
									</div>
									<h3 class="flow-title text-center wow fadeInUp" data-wow-delay="2.5s">Refer your Peers</h3>
									<div class="arrow hidden-xs wow rollIn" data-wow-delay="2.75s"><i class="fa fa-chevron-right"></i></div>
								</div>
								<div class="col-sm-6 col-md-6">
									<div class="flow wow fadeInLeft" data-wow-delay="3.25s">
									</div>
									<h3 class="flow-title text-center wow fadeInUp" data-wow-delay="3.25s">Earn Rewards!</h3>
								</div>
							</div>
						</div>
						<div class="row" id="welcome-anchors">
							<div class="col-sm-offset-3 col-sm-3 col-md-3 col-md-offset-3 anch-hold">
								<a href="#" class="btn-trans">SEE HOW IT WORKS</a>
							</div>
							<div class="col-sm-3 col-md-3">
								<a href="#" class="btn-trans">REGISTER NOW</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="hot-spot">
				<div class="container" id="hot-spot-body">
					<div class="row">
						<div class="col-sm-5 col-md-5 wow fadeInLeft">
							<h1 class="text-right">Hot spot for<br><b>job seekers</b> and <strong>employers</strong></h1>
						</div>
						<div class="col-sm-7 col-md-7 wow fadeInRight">
							<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>
						</div>
					</div>
				</div>
			</div>
			<div id="about-us">
				<div class="container">
					<h1 class="text-center wow fadeInUp" id="abt-title">New <b>Approach</b> to Recruiting</h1>
					<div class="row">
						<div class="col-sm-6 col-md-6 left">
							<div class="col-md-12 content-body wow fadeInLeft">
								<div class="arrow"><i class="fa fa-briefcase"></i></div>
								<div class="content">
									<h2>Lorem ipsum dolor sit amet</h2>
									<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
								</div>
							</div>
							<div class="col-md-12 content-body wow fadeInLeft" data-wow-delay="0.25s">
								<div class="arrow"><i class="fa fa-info-circle"></i></div>
								<div class="content">
									<h2>Lorem ipsum dolor sit amet</h2>
									<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
								</div>
							</div>
							<div class="col-md-12 content-body wow fadeInLeft" data-wow-delay="0.5s">
								<div class="arrow"><i class="fa fa-thumbs-o-up"></i></div>
								<div class="content">
									<h2>Lorem ipsum dolor sit amet</h2>
									<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-6 right">
							<div class="col-md-12 content-body wow fadeInRight">
								<div class="arrow"><i class="fa fa-comments"></i></div>
								<div class="content">
									<h2>Lorem ipsum dolor sit amet</h2>
									<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
								</div>
							</div>
							<div class="col-md-12 content-body wow fadeInRight" data-wow-delay="0.25s">
								<div class="arrow"><i class="fa fa-line-chart"></i></div>
								<div class="content">
									<h2>Lorem ipsum dolor sit amet</h2>
									<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
								</div>
							</div>
							<div class="col-md-12 content-body wow fadeInRight"  data-wow-delay="0.5s">
								<div class="arrow"><i class="fa fa-gear"></i></div>
								<div class="content">
									<h2>Lorem ipsum dolor sit amet</h2>
									<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="jobs-stats">
				<h1 id="jobs-stats-title" class="text-center wow fadeInUp">TalentVouch Site Stats</h1>
				<div class="container" id="jobs-stats-body">
					<div class="row wow fadeIn" id="jobs-stats-wrap">
						<div class="col-sm-6 col-md-2 col-md-offset-1">
							<h2 id="jobs-posted"><span class="counter">20</span></h2>
							<p>Jobs Posted</p>
						</div>
						<div class="col-sm-6 col-md-2">
							<h2 id="res-posted"><span class="counter">45</span></h2>
							<p>Resumes Posted</p>
						</div>
						<div class="col-sm-6 col-md-2">
							<h2 id="jobs-filled"><span class="counter">15</span></h2>
							<p>Jobs Filled</p>
						</div>
						<div class="col-sm-6 col-md-2">
							<h2 id="employers"><span class="counter">17</span></h2>
							<p>Employers</p>
						</div>
						<div class="col-sm-6 col-md-2">
							<h2 id="members"><span class="counter">2000</span></h2>
							<p>Members</p>
						</div>
					</div>
				</div>
			</div>

			<div id="subscribe">
				<div class="subs-dullness"></div>
				<div class="container">
					<form method="" action="" id="subscribe-form" class="subscribe-form">
						<h1 class="text-center" id="form-title">Get all our updates</h1>
						<p class="text-center">Subscribe to our Newsletter.</p>
						<div class="input-group" id="subscribe-body">
							<input type="text" class="form-control" placeholder="Email Address...">
							<span class="input-group-btn">
								<button class="btn btn-default subscribe" type="button" id="search-btn">Subscribe</button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<div class="login" id="login">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
							<form>
								<div class="form-wrap animated fadeInDown">
									<button type="button" id="sic">
										<i class="fa fa-times"></i>
									</button>
									<div class="title-logo">
										<h1 class="text-center"><a id="home-uri" href="#">TalentVouch<sup>Beta</sup></a></h1>
									</div>
									<div class="row">
										<h4 class="text-center logh">Login via</h4>
										<div class="login-via center-block">
											<a class="btn btn-fa" href="#"><i class="fa fa-facebook"></i></a>
											<a class="btn btn-li" href="#"><i class="fa fa-linkedin"></i></a>
											<a class="btn btn-gp" href="#"><i class="fa fa-google-plus"></i></a>
										</div>
									</div>
									<h4 class="text-center">or</h4>
									<div class="form-group">
										<label class="label" for="exampleInputEmail1" id="userlabel">Email address</label>
										<input type="email" class="form-control" id="InputEmail" placeholder="Enter email">
									</div>
									<div class="form-group">
										<label class="label" for="exampleInputPassword1" id="passlabel">Password</label>
										<input type="password" class="form-control" id="InputPassword" placeholder="Password">
									</div>
									<button type="submit" class="btn btn-block btn-default" id="sign-in">Sign In</button>
								</div>
							</form>
							<p class="text-center" id="fp"><a href="#">Forgot password?</a></p>
							<p id="sup" class="text-center"><a class="btn btn-danger" href="#">Sign Up</a>&nbsp;&nbsp;now and Earn Rewards.</p>
						</div>
					</div>
				</div>
			</div>

			<!-- Footer -->
			<footer>
				<div id="info-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-8">
								<div class="col-xs-12 col-sm-4 col-md-3">
                                                                    <img width="100px" height="100px" class="img-circle" src="<c:url value=""/>">
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<h4 class="ft-title">Information</h4>
									<p><a href="#">Our Story</a></p>
									<p><a href="#">How it Works?</a></p>
									<p><a href="#">Terms &amp; Conditions</a></p>
									<p><a href="#">Privacy Policy</a></p>
									<p><a href="#">Contact Us</a></p>
									<p><a href="#">FAQs</a></p>
									<p><a href="#">Report a bug</a></p>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<h4 class="ft-title">Job Seekers</h4>	
									<p><a href="#">How it Works?</a></p>
									<p><a href="#">Register Now</a></p>
									<p><a href="#">Sign In</a></p>
									<p><a href="#">Search Jobs</a></p>
									<p><a href="#">Help</a></p>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<h4 class="ft-title">Employers</h4>
									<p><a href="#">How it Works?</a></p>
									<p><a href="#">Sign Up</a></p>
									<p><a href="#">Sign In</a></p>
									<p><a href="#">Post a Job</a></p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-4">
								<div class="col-xs-6 col-sm-4 col-md-6">
									<h4 class="ft-title">Top Categories</h4>
									<p><a href="#">IT Software jobs</a></p>
									<p><a href="#">BPO jobs</a></p>
									<p><a href="#">Sales jobs</a></p>
									<p><a href="#">Finance jobs</a></p>
									<p><a href="#">Marketing jobs</a></p>
									<p><a href="#">Fresher jobs</a></p>
									<p><a href="#">Engineering jobs</a></p>
									<p><a href="#">HR Administration jobs</a></p>
									<p><a href="#">Govt jobs</a></p>
									<p><a href="#">Telecom jobs</a></p>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-6">
									<h4 class="ft-title">Job Locations</h4>	
									<p><a href="#">Jobs in Delhi</a></p>
									<p><a href="#">Jobs in Pune</a></p>
									<p><a href="#">Jobs in Mumbai</a></p>
									<p><a href="#">Jobs in Kolkata</a></p>
									<p><a href="#">Jobs in Chennai</a></p>
									<p><a href="#">Jobs in Bangalore</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="reserved">
					<div class="container">
						<p class="text-center">All rights Reserved &copy; 2015 <a href="#">TalentVouch.com</a></p>
					</div>
				</div>
			</footer>
		</div>

	</body>
	<script src="<c:url value="/resources/includes/js/jquery.animateNumber.min.js"/>"></script>
	<!--<script language="javascript" src="js/jquery-1.11.2.min.js"></script>-->
	<!-- Bootstrap.js -->
	<script src="<c:url value="/resources/includes/js/wow.min.js"/>"></script>
	<script src="<c:url value="/resources/includes/js/jquery.counterup.min.js"/>"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <script src="<c:url value="/resources/includes/js/login-script.js"/>"></script>
	<script src="<c:url value="/resources/includes/js/home-script.js"/>"></script>
</html>
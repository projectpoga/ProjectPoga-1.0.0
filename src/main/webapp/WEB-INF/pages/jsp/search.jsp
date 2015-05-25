<!doctype html>
<%@include file="/WEB-INF/pages/jspf/envsetup.jspf"%>
<%@page import="org.ocpsoft.prettytime.PrettyTime, java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%> 

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

		<!-- Favicon -->

		<!-- Bootstrap CSS-->
		<link href="<c:url value="/resources/includes/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/includes/bsselect/css/bootstrap-select.min.css"/>" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/includes/slider/css/bootstrap-slider.min.css"/>" rel="stylesheet" type="text/css">

		<!--<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">-->

		<!-- Font Awesome CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

		<!-- Animate.css -->
		<link href="<c:url value="/resources/includes/css/animate.css"/>" rel="stylesheet" type="text/css">

		<!-- style.css -->
		<link href="<c:url value="/resources/includes/css/style-purple.css"/>" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/includes/css/style-search.css"/>" rel="stylesheet" type="text/css">
		<!-- jQuery 1.11.2 Plugin -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!--<script language="javascript" src="js/jquery-1.11.2.min.js"></script>-->
		<!--<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>-->
		<!-- Bootstrap.js -->
		<script src="<c:url value="/resources/includes/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resources/includes/bsselect/js/bootstrap-select.min.js"/>"></script>
		<script src="<c:url value="/resources/includes/slider/bootstrap-slider.min.js"/>"></script>
	</head>
	<body>

		<!-- Categories Side Bar -->
		<div class="sidebar sb-active" id="category-section">
			<div id="ctg-heading">
				<h3 id="category-title"><a href="javascript:void(0);" id="hide-sidebar" title="hide"><i class="fa fa-arrow-circle-left"></i></a>&nbsp;Categories</h3>
			</div>
			<div class="category-body reached-bottom" id="category-body">
				<div id="ctg-list-body">
					<ul class="nav nav-pills nav-stacked" id="category-list">
						 <c:forEach var="categoryList" items="${categoryModelList}">
                                                <li><a href="#">${categoryList.categoryName} <span class="badge">${categoryList.jobsCount}</span></a><input type="hidden" name="<c:out value="${fn:trim(categoryList.categoryName)}" />" id="${categoryList.categoryId}" value="${categoryList.categoryId}"/></li>
					    </c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<button type="button" class="sb-toggle" id="sb-toggle" data-toggle="tooltip" data-placement="right" title="Categories">
			<i class="fa fa-chevron-right"></i>
		</button>
		<div class="wrap sb-open">
			<!-- Responsive Navbar -->
			<div class="navholder">
				<nav class="navbar navbar-default navbar-static-top">
					<div class="container">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">TalentVouch<small class="hidden-xs hidden-sm">.com</small></a>
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-home">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>	
							</button>
						</div>
						<div class="collapse navbar-collapse" id="navbar-home">
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="index.htm">Home</a>
								</li>
								<li>
									<a href="#">How it Works</a>
								</li>
								<li class="active">
									<a href="jobs.htm">Jobs</a>
								</li>
								<li>
									<a href="#">Sign In</a>
								</li>
								<li>
									<a href="#" id="employers-zone">Employers</a>
								</li>
							</ul>
						</div>
					</div>
				</nav><!-- Responsive Navbar end -->
			</div>

			<div id="plain-search-form">
				<div class="dullness"></div>
				<div class="container" id="search-form-container">
					<h1 id="intro-title" class="text-center">You vouch us, we vouch you!</small></h1>
					<p class="text-center"></p>
					<div class="panel panel-default panel-body" id="plain-search-body">	
						<form class="form-inline" action="search.htm" method="post">
							<div class="row" id="search-form-body">
								<div class="col-sm-12 col-md-6 col">
									<div class="row">
										<div class="form-group col-sm-6 col-md-6">
											<label class="sr-only" for="skills-desg">Skills</label>
											<input type="text" name="jobTitle" class="form-control" id="skills-desg" placeholder="Skills, Designation, Companies">
										</div>
										<div class="form-group col-sm-6 col-md-6">
											<label class="sr-only" for="location">Preferred Location</label>
											<input type="text" name="location" class="form-control" id="location" placeholder="Location">
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-md-6 col">
									<div class="row">
										<div class="form-group col-sm-5 col-md-5">
											<label class="sr-only" for="location">Experience</label>
											<input type="text" name="experience" class="form-control" id="location" placeholder="Experience">
										</div>
										<div class="form-group col-sm-5 col-md-5">
											<label class="sr-only" for="location">Salary</label>
											<input type="text" name="salary" class="form-control" id="location" placeholder="Salary">
										</div>
										<div class="form-group col-sm-2 col-md-2">
											<button type="submit" class="btn btn-default" id="plain-search-btn"><i class="fa fa-search"></i></button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div id="search-list">
				<div class="container">
					<h3 id="job-query-title"><i class="fa fa-angle-double-right"></i>&nbsp;<span>Web Designer</span> Jobs</h3>
					<div class="row">
						<div class="col-sm-4 col-md-3 col-lg-3">
							<div class="panel panel-default" id="refine-results">
								<div class="panel-heading" id="rr-title">
									Refine Results
								</div>
								<form method="" action="">
									<div class="panel-body" id="refine-body">
										<div id="fresh-result">
											<h5 class="sub-heading">Jobs Freshness</h5>
											<select class="selectpicker show-tick" data-style="btn-fresh" id="freshness-list">
												<option>Last 30 Days</option>
												<option>Last 15 Days</option>
												<option>Last 7 Days</option>
												<option>Last 3 Days</option>
												<option>Last 1 Day</option>
											</select>
										</div>
										<div class="divider"></div>
										<div class="panel-group" id="refine-accordion" role="tablist" aria-multiselectable="true">
											<div class="panel panel-default" id="location">
												<div class="panel-heading" role="tab" id="heading1">
													<a class="toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
														<h4 class="panel-title">By Location</h4>
													</a>
												</div>
												<div id="collapse1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading1">
													<div class="panel-body">
                                                                                                            <c:forEach var="jobsCountByLoc" items="${jobsCountByLocList}">
                                                                                                            <div class="checkbox">
															<label>
																<input type="checkbox"> ${jobsCountByLoc.label} <span class="badge">${jobsCountByLoc.jobsCount}</span>
															</label>
														</div>
                                                                                                            </c:forEach>
														<!--    Static check box values
                                                                                                                        <div class="checkbox">
															<label>
																<input type="checkbox"> Bengaluru <span class="badge">36</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Delhi <span class="badge">30</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Gurgaon <span class="badge">27</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Mumbai <span class="badge">43</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Pune <span class="badge">10</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Visakhapatnam <span class="badge">50</span>
															</label>
														</div>
                                                                                                        -->
													</div>
												</div>
											</div>
											<div class="panel panel-default" id="job-role">
												<div class="panel-heading" role="tab" id="heading2">
													<a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
														<h4 class="panel-title">
															Role
														</h4>
													</a>
												</div>
												<div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
													<div class="panel-body">
														<div class="checkbox">
															<label>
																<input type="checkbox"> Software Developer <span class="badge">57</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Team Lead/Technical Lead <span class="badge">17</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Graphic/Web Designer <span class="badge">27</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Technical Architect <span class="badge">23</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Testing Engineer <span class="badge">34</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Database Architech/Desinger <span class="badge">12</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> System Administrator <span class="badge">17</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Technical Support Engineer <span class="badge">104</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> System Security <span class="badge">4</span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default" id="func-area">
												<div class="panel-heading" role="tab" id="heading3">
													<a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
														<h4 class="panel-title">
															Functional Area
														</h4>
													</a>
												</div>
												<div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
													<div class="panel-body">
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Application Programming, Maintenance <span class="badge">56</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - ERP, CRM <span class="badge">9</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - System Programming <span class="badge">7</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - DBA, Datawarehousing <span class="badge">7</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Client/Server Programming <span class="badge">5</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - eCommerce, Internet Technologies <span class="badge">4</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - QA & Testing <span class="badge">3</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Middleware <span class="badge">2</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Mobile <span class="badge">2</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Network Administration, Security <span class="badge">2</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Mainframe <span class="badge">1</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Systems, EDP, MIS <span class="badge">1</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT Software - Other <span class="badge">4</span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default" id="industry">
												<div class="panel-heading" role="tab" id="heading4">
													<a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
														<h4 class="panel-title">
															Industry
														</h4>
													</a>
												</div>
												<div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
													<div class="panel-body">
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT-Software / Software Services <span class="badge">81</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Banking / Financial Services / Broking <span class="badge">17</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Electricals / Switchgears <span class="badge">4</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> Media / Entertainment / Internet <span class="badge">3</span>
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox"> IT-Hardware & Networking <span class="badge">2</span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default" id="industry">
												<div class="panel-heading" role="tab" id="heading5">
													<a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
														<h4 class="panel-title">
															By Salary
														</h4>
													</a>
												</div>
												<div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
													<div class="panel-body">
														<div class="checkbox">
															<label>
																<input type="checkbox">
																0-3 Lakhs
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox">
																3-6 Lakhs
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox">
																6-10 Lakhs
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox">
																10-15 Lakhs
															</label>
														</div>
														<div class="checkbox">
															<label>
																<input type="checkbox">
																15-25 Lakhs
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default" id="vouch-range">
												<div class="panel-heading" role="tab" id="heading6">
													<a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
														<h4 class="panel-title">
															Vouch Money Range
														</h4>
													</a>
												</div>
												<div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
													<div class="panel-body">
														<input id="vouch-range-slider" type="text"/>
														<div id="vr-label">
															<span id="vr-val1">0</span>
															<span id="vr-val2">10000</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="divider"></div>
										<input type="submit" class="btn btn-primary btn-block" id="refine-search-btn" value="Submit" />
									</div>
								</form>
							</div>
						</div>
                                            
                                            	<%!
                                                    //This method converts the time stamp to days ago ex:30 min ago, 1 day ago
                                                    String convertTimeStamp(String timeStamp) throws ParseException {
                                                        PrettyTime p = new PrettyTime();
                                                        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm");
                                                     Date past = format.parse(timeStamp);
                                                     return p.format(past);
                                                    } 
                                                    %>
						<div class="col-sm-8 col-md-7 col-lg-7" id="query-jobs-list">
                                                    <c:forEach var="jobDtlsObj" items="${refinedJobs}">
                                                        
                                                    
							<div class="panel panel-default job-post-container">
								<div class="panel-body job-post-body">
									<div class="job-post-wrap">
										<div class="row">
											<div class="col-xs-4 col-sm-3 col-md-2 post-clogo">
												<a href="#"><img src="includes/img/company_logo.jpg" class="img-responsive"></a>
											</div>
											<div class="xol-xs-8 col-sm-9 col-md-10 job-post-details">
												<div class="main-details">
													<h4 class="job-post-title"><a href="#">${jobDtlsObj.jobTitle}</a></h4>
													<p class="ct">${jobDtlsObj.compName}</p>
													<div class="row">
														<div class="exp-loc col-xs-12">
															<span class="et"><i class="fa fa-briefcase"></i>&nbsp;${jobDtlsObj.experienceRequired} Yrs</span>
															<span class="et"><i class="fa fa-map-marker"></i>&nbsp;${jobDtlsObj.location}</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="job-post-desc">
											<div class="row">
												<div class="col-xs-3 col-sm-3 col-md-2 sh">
													Key Skills
												</div>
												<div class="col-xs-9 col-sm-9 col-md-10 sd">
													${jobDtlsObj.skillsRequired}
												</div>
											</div>
											<div class="row">
												<div class="col-xs-3 col-sm-3 col-md-2 jdh">
													Description
												</div>
												<div class="col-xs-9 col-sm-9 col-md-10 jd">
													${jobDtlsObj.jobDesc}
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="panel-footer">
									<div class="slr-pd">
										<span class="slr"><i class="fa fa-inr"></i>${jobDtlsObj.salary}</span>
                                                                                <c:set var="postedDate" value="${jobDtlsObj.postedDate}"/>
                                                                                <%String posted=convertTimeStamp(pageContext.getAttribute("postedDate").toString());%>
                                                                                <span class="pd"><span class="post-by">Posted by, <a href="">${jobDtlsObj.employer}</a>,</span>&nbsp;<span class="post-date"><%=posted%>.</span></span>
									</div>
								</div>
							</div>
                                                    </c:forEach>
                                                    <!--End of div -->
						
                                                    <!--End of main div -->
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
									<img width="100px" height="100px" class="img-circle" src="">
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
	<script src="<c:url value="/resources/includes/js/script.js"/>"></script>
	<script src="<c:url value="/resources/includes/js/search-script.js"/>"></script>
</html>
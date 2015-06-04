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

		<!-- Favicon -->

		<!-- Bootstrap.min.css -->
		<link href="<c:url value="/resources/includes/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
                <link href="<c:url value="/resources/includes/bsselect/css/bootstrap-select.min.css"/>" rel="stylesheet" type="text/css">
                <link href="<c:url value="/resources/includes/slider/css/bootstrap-slider.min.css"/>" rel="stylesheet" type="text/css">

		<!-- Slick CSS -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/includes/css/slick.css"/>"/>
                <link rel="stylesheet" type="text/css" href="<c:url value="/resources/includes/css/slick-theme.css"/>"/>

		<!-- Font Awesome CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

		<!-- Animate.css -->
		<link href="<c:url value="/resources/includes/css/animate.css"/>" rel="stylesheet" type="text/css">

		<!-- style.css -->
                <link href="<c:url value="/resources/includes/css/style-login.css"/>" rel="stylesheet" type="text/css" >
                <link href="<c:url value="/resources/includes/css/logged.css"/>" rel="stylesheet" type="text/css" >
                <link href="<c:url value="/resources/includes/css/style-searchbar.css"/>" rel="stylesheet" type="text/css" >
		<link href="<c:url value="/resources/includes/css/style-purple.css"/>" rel="stylesheet" type="text/css" >
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
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
			<!--<i class="fa fa-chevron-right"></i>-->
                        <img class="img-responsive" src="<c:url value="/resources/includes/img/ctg.png"/>"/>
		</button>
                <c:choose>
                    <c:when test="${sessionScope.userDtls == null}">
                        <%@include file="/WEB-INF/pages/jsp/login.jsp"%>
                    </c:when>
                </c:choose>
		<div class="wrap sb-open">
			<!-- Responsive Navbar -->
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
                                                        <c:choose>
                                                            <c:when test="${sessionScope.userDtls != null}">
                                                                <button type="button" id="my-account">
                                                                    <img src="<c:url value="/resources/includes/img/emp-icon.png"/>" width="30px" /></button>
                                                            </c:when>
                                                        </c:choose>
						</div>
						<div class="collapse navbar-collapse" id="navbar-home">
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="index.htm">Home<span class="hover"></span></a>
								</li>
								<li>
									<a href="#">How it Works<span class="hover"></span></a>
								</li>
								<li class="active">
									<a href="jobs.htm">Jobs<span class="hover"></span></a>
								</li>
								<%@include file="/WEB-INF/pages/jsp/logged.jsp" %>
								<li>
									<a href="#" id="employers-zone">Employers<span class="hover hidden-sm hidden-md hidden-lg"></span></a>
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
                                                                                        <select class="selectpicker show-tick" name="experience" data-style="btn-exp" id="experience">
                                                                                            <option value="0">Experience</option>
                                                                                            <option value="0">0</option>
                                                                                            <option>1</option>
                                                                                            <option>2</option>
                                                                                            <option>3</option>
                                                                                            <option>4</option>
                                                                                            <option>5</option>
                                                                                            <option>6</option>
                                                                                            <option>7</option>
                                                                                            <option>8</option>
                                                                                            <option>9</option>
                                                                                            <option>10</option>
                                                                                            <option>11</option>
                                                                                            <option>12</option>
                                                                                            <option>13</option>
                                                                                            <option>14</option>
                                                                                            <option>15</option>
                                                                                        </select>
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

			<div id="refers-stuff">
				<div class="container" id="refers-body">
					<div id="refers-posts">
						<div class="panel panel-default panel-body" id="refers-posts-body">
							<h3 class="post-category-title">Top Jobs <a href="#" class="btn-md">View All</a></h3>
							<div class="cslick">
                                                            <c:forEach var="topJobsObj" items="${topJobsList}"> 
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">${topJobsObj.jobTitle}</a>
													<div><small>${topJobsObj.compName}</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
                                                                                                                            <a href="#"><img class="img-responsive" src="<c:url value="/resources/includes/img/company_logo.jpg"/>" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>${topJobsObj.cityName}</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>${topJobsObj.introAmount}</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>${topJobsObj.refAmount}</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    </c:forEach>
			                  
			                  
			                    <!--<div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="icon">
													<a href="#"><img src="includes/img/company_logo.jpg" /></a>
												</div>
												<div class="job-details">
													<div class="col-xs-6">
														<p class="location">Location</p>
														<p class="more-info"><a href="#">Read more</a></p>
													</div>
													<div class="col-xs-6">
														<a class="btn btn-primary apply" href="#">Apply</a>
													</div>
												</div>
												<div class="reward-details text-center">
													<p>Intro Reward <b><i class="fa fa-inr"></i> <span>2200</span>/-</b></p>
													<p>Referral Reward <b><i class="fa fa-inr"></i> <span>22000</span>/-</b></p>
													<p><a href="#" class="btn-refer btn refer">Refer Now</a></p>
												</div>
											</div>
										</div>
									</div>
			                    </div>-->
			                </div>     
                                                        <!-- End of Top jobs -->
						</div>

						<div class="panel panel-default panel-body" id="refers-posts-body">
							<h3 class="post-category-title">Fresher Jobs <a href="#" class="btn-md">View All</a></h3>
							<div class="cslick-1">
                                                            <c:forEach var="fresherJobsObj" items="${fresherJobsList}"> 
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">${fresherJobsObj.jobTitle}</a>
													<div><small>${fresherJobsObj.compName}</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="<c:url value="/resources/includes/img/company_logo.jpg"/>" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>${fresherJobsObj.cityName}</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>${fresherJobsObj.introAmount}</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>${fresherJobsObj.refAmount}</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    </c:forEach>
			                  
			                   <!--div start-->
                                           <!--<div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-12">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
                                           
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-12">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-12">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-12">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-12">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-12">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
                                           -->
                                           <!--div end--> 
			                </div>
						</div>

						<div class="panel panel-default panel-body" id="refers-posts-body">
							<h3 class="post-category-title">Intro Reward Jobs <a href="#" class="btn-md">View All</a></h3>
							<div class="cslick-2">
                                                            
                                                            <c:forEach var="introRewardJobsObj" items="${introRewardJobsList}"> 
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">${introRewardJobsObj.jobTitle}</a>
													<div><small>${introRewardJobsObj.compName}</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="<c:url value="/resources/includes/img/company_logo.jpg"/>" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>${introRewardJobsObj.cityName}</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>${introRewardJobsObj.introAmount}</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>${introRewardJobsObj.refAmount}</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    </c:forEach>
			                   <!-- <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>2200</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>2200</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>2200</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>2200</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>2200</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                    <div>
			                        <div class="post-single">
										<div class="panel panel-default panel-body post-single-body">
											<div class="post-title">
												<h4 class="text-center">
													<a href="#">Job Title</a>
													<div><small>Company Title</small></div>
												</h4>
											</div>
											<div class="post-details">
												<div class="job-details">
													<div class="row">
														<div class="col-xs-6">
															<div class="icon">
																<a href="#"><img class="img-responsive" src="includes/img/company_logo.jpg" /></a>
															</div>
														</div>
														<div class="col-xs-6">
															<div class="post-action">
																<p><a class="btn btn-primary apply" href="#">Apply</a></p>
																<p><a href="#" class="btn-refer btn refer">Refer Now!</a></p>
															</div>
														</div>
													</div>
													<p class="location">Location: <span>Visakhapatnam</span></p>
												</div>
												<div class="reward-details text-center">
													<div class="row">
														<div class="col-xs-6">
															<p class="reward-title">Intro Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>2200</span>/-</b></p>
														</div>
														<div class="col-xs-6">
															<p class="reward-title">Referral Vouch</p>
															<p class="reward-price"><i class="fa fa-inr"></i> <b><span>22000</span>/-</b></p>
														</div>
													</div>
												</div>
											</div>
										</div>
			                    	</div>
			                    </div>
			                </div>
						</div>
					</div> -->
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
            <!-- jQuery 1.11.2 Plugin -->
        <!--<script language="javascript" src="js/jquery-1.11.2.min.js"></script>-->
	<!-- Bootstrap.js -->
	<script src="<c:url value="/resources/includes/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/includes/bsselect/js/bootstrap-select.min.js"/>"></script>
        <script src="<c:url value="/resources/includes/slider/bootstrap-slider.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/includes/js/slick.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/includes/js/cscript.js"/>"></script>
        <script src="<c:url value="/resources/includes/js/login-script.js"/>"></script>
	<script src="<c:url value="/resources/includes/js/script.js"/>"></script>
	</body>
</html>
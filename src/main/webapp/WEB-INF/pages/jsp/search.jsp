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
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700' rel='stylesheet' type='text/css'>

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
        <link href="<c:url value="/resources/includes/css/style-login.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/resources/includes/css/style-searchbar.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/resources/includes/css/style-search.css"/>" rel="stylesheet" type="text/css">
        <!-- jQuery 1.11.2 Plugin -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!--<script language="javascript" src="js/jquery-1.11.2.min.js"></script>-->
        <!--<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>-->
        <!-- Bootstrap.js -->
        <script src="<c:url value="/resources/includes/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/includes/bsselect/js/bootstrap-select.min.js"/>"></script>
        <script src="<c:url value="/resources/includes/slider/bootstrap-slider.min.js"/>"></script>
        <script lang="javascript" type="text/javascript">
            function ajaxRoleFacet()
            {
                var labels = ["locationFacet","roleFacet","industryFacet"];
                var query = "";
                //loop for each facet
                for(var facetIndex = 0; facetIndex < labels.length; facetIndex++){
                    
                var cboxes = document.getElementsByName(labels[facetIndex]);
                var len = cboxes.length;
                var rolesLabel = '';
                for (var i = 0; i < len; i++) {
                    if (cboxes[i].checked)
                        rolesLabel = rolesLabel + "'" + cboxes[i].value + "'"  +",";
                }
                rolesLabel = rolesLabel.substr(0,(rolesLabel.length-1));
                query = query + rolesLabel + ";";
                }
                var data = "query=" + encodeURIComponent(query);
                $.ajax({
                    type: "POST",
                    data: data,
                    url: "searchByFacets.htm",
                    success: function (response) {
                        $("#searchResultsDiv").html(response);
                    }

                });
            }
        </script>
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
            <img class="img-responsive" src="<c:url value="/resources/includes/img/ctg.png" />"/>
        </button>
        <div class="login" id="login">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4" id="form-hold">
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
                                    <a href="#signin" id="signin">Sign In</a>
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

            <div id="search-list">
                <div class="container">
                    <h3 id="job-query-title"><i class="fa fa-angle-double-right"></i>&nbsp;<span>Web Designer</span> Jobs</h3>
                    <div class="row" id="refine-holder">
                        <div class="col-sm-4 col-md-3 col-lg-3 col-skew" id="refine-section">
                            <div class="panel panel-default" id="refine-results">
                                <div class="panel-heading" id="rr-title">Refine Results</div>
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
                                                                    <input type="checkbox" value="<c:out value="${jobsCountByLoc.labelId}"/>" onchange="ajaxRoleFacet()" name="locationFacet"> ${jobsCountByLoc.label} <span class="badge">${jobsCountByLoc.jobsCount}</span>
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
                                                        <h4 class="panel-title">Role</h4>
                                                    </a>
                                                </div>
                                                <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
                                                    <div class="panel-body">
                                                        <c:forEach var="jobsCountByJobTitle" items="${jobsCountByJobTitleList}">
                                                            <div class="checkbox">
                                                                <label>
                                                                    <input type="checkbox" value="<c:out value="${jobsCountByJobTitle.label}"/>" onchange="ajaxRoleFacet()" name="roleFacet"> ${jobsCountByJobTitle.label} <span class="badge">${jobsCountByJobTitle.jobsCount}</span>
                                                                </label>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default" id="industry">
                                                <div class="panel-heading" role="tab" id="heading4">
                                                    <a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
                                                        <h4 class="panel-title">Industry</h4>
                                                    </a>
                                                </div>
                                                <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
                                                    <div class="panel-body">
                                                        <c:forEach var="categoryList" items="${categoryModelList}">
                                                            <div class="checkbox">
                                                                <label>
                                                                    <input type="checkbox" value="<c:out value="${categoryList.categoryId}"/>" onchange="ajaxRoleFacet()" name="industryFacet"> ${categoryList.categoryName} <span class="badge">${categoryList.jobsCount}</span>
                                                                </label>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default" id="industry">
                                                <div class="panel-heading" role="tab" id="heading5">
                                                    <a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
                                                        <h4 class="panel-title">By Salary</h4>
                                                    </a>
                                                </div>
                                                <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
                                                    <div class="panel-body">
                                                        <div class="checkbox">
                                                            <label><input type="checkbox">0-3 Lakhs</label>
                                                        </div>
                                                        <div class="checkbox">
                                                            <label><input type="checkbox">3-6 Lakhs</label>
                                                        </div>
                                                        <div class="checkbox">
                                                            <label><input type="checkbox">6-10 Lakhs</label>
                                                        </div>
                                                        <div class="checkbox">
                                                            <label><input type="checkbox">10-15 Lakhs</label>
                                                        </div>
                                                        <div class="checkbox">
                                                            <label><input type="checkbox">15-25 Lakhs</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default" id="vouch-range">
                                                <div class="panel-heading" role="tab" id="heading6">
                                                    <a class="collapsed toggle-link" data-toggle="collapse" data-parent="#refine-accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
                                                        <h4 class="panel-title">Vouch Money Range</h4>
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

                        <!-- Deleted convert time scriplet -->
                        <div class="col-sm-8 col-md-7 col-lg-7 col-skew" id="query-jobs-list">
                            <div class="panel panel-default vl" id="vl1">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-9 list-detail">
                                            <span>1-14</span> of 14 <span>Web Designer Jobs</span><span class="hidden-xs"> in Visakhapatnam</span>
                                        </div>
                                        <div class="col-sm-3 hidden-xs pull-right">
                                            <div class="pull-right">
                                                <span>
                                                    <button class="btn btn-det active">
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                    </button>
                                                </span>
                                                <span>
                                                    <button class="btn btn-few">
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="searchResultsDiv">

                                <%@include file="/WEB-INF/pages/jsp/searchResults.jsp"%>
                            </div>
                            <!--Deleted div tag -->
                            <!--End of main div -->
                        </div>
                        <div class="col-sm-12 col-md-2 col-lg-2 col-skew" id="ad-section">
                            <div class="panel panel-default">
                                <div class="panel-body text-center">
                                    <p>Advertise Here</p>
                                    <a href="javascript:void(0)" class="hidden-xs hidden-sm"><img class="img-responsive center-block" src="<c:url value="/resources/includes/img/adbanner.jpg"/>"/></a>
                                    <a href="javascript:void(0)" class="hidden-md hidden-lg"><img class="img-responsive center-block" src="<c:url value="/resources/includes/img/adbannersmall.jpg"/>"/></a>
                                </div>
                            </div>
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
    <script src="<c:url value="/resources/includes/js/login-script.js"/>"></script>
    <script src="<c:url value="/resources/includes/js/search-script.js"/>"></script>
    <script>
                                                                        $("#vouch-range-slider").slider({step: 1, min: 0, max: 10000, value: [0, 10000], focus: true, tooltip: 'hide'});
                                                                        $("#vouch-range-slider").on("slide", function (slideEvt) {
                                                                            $("#vr-val1").text(slideEvt.value[0]);
                                                                            $("#vr-val2").text(slideEvt.value[1]);
                                                                        });
    </script>
</html>
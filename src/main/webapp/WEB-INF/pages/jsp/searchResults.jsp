<%-- 
    Document   : searchResults
    Created on : May 29, 2015, 12:51:53 AM
    Author     : Manoj
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/WEB-INF/pages/jspf/envsetup.jspf"%>
<%@page import="org.ocpsoft.prettytime.PrettyTime, java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%> 
<%!
    //This method converts the time stamp to days ago ex:30 min ago, 1 day ago
    String convertTimeStamp(String timeStamp) throws ParseException {
        PrettyTime p = new PrettyTime();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        Date past = format.parse(timeStamp);
        return p.format(past);
    }
%>
 <div class="panel panel-default vl" id="vl1">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-9 list-detail">
                                           <c:choose>
                                                <c:when test="${empty refinedJobs}">
                                                    <span>No  Jobs </span>
                                                </c:when>
                                                
                                                <c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${fn:length(refinedJobs) gt 1}">
                                                            <span><c:out value="${fn:length(refinedJobs)}" /> Jobs </span>
                                                         </c:when>
                                                         <c:otherwise>
                                                             <span><c:out value="${fn:length(refinedJobs)}" /> Job </span>
                                                         </c:otherwise>
                                                    </c:choose>
                                                </c:otherwise>
                                           </c:choose>
                                            <span>found with your </span><span class="hidden-xs">Search criteria</span>
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
                          
    <c:choose>
        <c:when test="${empty refinedJobs}">
<!--        No search results found-->
        </c:when>
    <c:otherwise>
        <c:forEach var="jobDtlsObj" items="${refinedJobs}">
            <div class="panel panel-default job-post-container">
                <div class="panel-body job-post-body">
                    <div class="job-post-wrap">
                        <div class="row">
                            <div class="col-xs-4 col-sm-3 col-md-2 post-clogo">
                                <a href="#"><img src="<c:url value="/resources/includes/img/company_logo.jpg"/>" class="img-responsive"></a>
                            </div>
                            <div class="col-xs-8 col-sm-9 col-md-10 job-post-details">
                                <div class="main-details">
                                    <h4 class="job-post-title"><a href="#">${jobDtlsObj.jobTitle}</a></h4>
                                    <p class="ct">${jobDtlsObj.compName}</p>
                                    <div class="row">
                                        <div class="exp-loc col-xs-8 col-sm-12 col-md-12">
                                            <span class="et"><i class="fa fa-briefcase"></i>&nbsp;${jobDtlsObj.experienceRequired} Yrs</span>
                                            <span class="et"><i class="fa fa-map-marker"></i>&nbsp;${jobDtlsObj.location}</span>
                                            <span class="et"><i class="fa fa-inr"></i>&nbsp;${jobDtlsObj.salary}&nbsp;p.a.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="job-post-desc hidden-xs">
                            <div class="row">
                                <div class="col-xs-3 col-sm-3 col-md-2 sh">Key Skills</div>
                                <div class="col-xs-9 col-sm-9 col-md-10 sd">
                                    ${jobDtlsObj.skillsRequired}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-sm-3 col-md-2 jdh">Description</div>
                                <div class="col-xs-9 col-sm-9 col-md-10 jd">
                                    ${jobDtlsObj.jobDesc}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer ir">
                    <div class="row">
                        <div class="iv rv text-center col-xs-12 col-sm-6 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1"><i class="fa fa-star"></i> Referral Vouch&nbsp;<i class="fa fa-inr"></i>&nbsp;<b>${jobDtlsObj.refAmount}</b></div>
                        <div class="iv text-center col-xs-6 col-sm-5 col-md-5 col-lg-4 hidden-xs">Intro Vouch&nbsp;<i class="fa fa-inr"></i>&nbsp;<b>${jobDtlsObj.introAmount}</b></div>
                    </div>
                </div>
                <div class="panel-footer">
                    <div class="slr-pd">
                        <c:set var="postedDate" value="${jobDtlsObj.postedDate}"/>
                        <%String posted = convertTimeStamp(pageContext.getAttribute("postedDate").toString());%>
                        <span class="pd"><span class="post-by">Posted by, <a href="">${jobDtlsObj.employer}</a>,</span>&nbsp;<span class="post-date"><%=posted%>.</span></span>
                    </div>
                </div>
            </div><!--End of div -->
        </c:forEach>
    </c:otherwise>
</c:choose>
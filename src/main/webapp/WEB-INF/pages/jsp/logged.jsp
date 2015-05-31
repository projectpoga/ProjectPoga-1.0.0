<c:choose>
    <c:when test="${sessionScope.userName != null}">
        <li class="dropdown hidden-xs">
            <a href="#" class="dropdown-toggle my-account" data-toggle="dropdown" role="button" aria-expanded="false"><img src="<c:url value="/resources/includes/img/emp-icon.png"/>" width="30px" /></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">My Profile</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="logout.htm"><i class="fa fa-power-off"></i>&nbsp;Log Out</a></li>
            </ul>
        </li>
    </c:when>
    <c:otherwise>
        <li>
            <a href="#SignIn" id="signin">Sign In<span class="hover"></span></a>
        </li>
    </c:otherwise>
</c:choose>

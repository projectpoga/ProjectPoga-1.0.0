<div class="login" id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4" id="form-hold">
                <form action="login.htm" method="post" name="loginForm">
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
                            <input type="email" name="email" class="form-control" id="InputEmail" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label class="label" for="exampleInputPassword1" id="passlabel">Password</label>
                            <input type="password" name="password" class="form-control" id="InputPassword" placeholder="Password">
                        </div>
                        <div id="loginError"></div>
                        <input type="button" value="Sign In" class="btn btn-block btn-default" id="sign-in"/>
                    </div>
                </form>

                <p class="text-center" id="fp"><a href="#">Forgot password?</a></p>
                <p id="sup" class="text-center"><a class="btn btn-danger" href="#">Sign Up</a>&nbsp;&nbsp;now and Earn Rewards.</p>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#sign-in').click(function () {
        doAjaxPost();
    })
    function doAjaxPost() {

        var email = document.loginForm.email.value;
        var password = document.loginForm.password.value;
        var data = 'email=' + encodeURIComponent(email)
                + '&password='
                + encodeURIComponent(password);

        $.ajax({
            type: "POST",
            data: data,
            url: "login.htm",
            success: function (response) {

                if (response != null && response === "success")
                    window.location.replace("loginIndex.htm");
                else
                    $("#loginError").html("Authentication failed Please try again");

            },
            error: function (e) {
                alert("Error while handling the request" + e);

            }


        });

    }
    
    $("#InputPassword").keyup(function(event){
    if(event.keyCode === 13){
        $("#sign-in").click();
    }
    });
</script>
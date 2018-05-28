<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<script>
    $(function(){
 
        <c:if test="${!empty msg}">
        $("span.errorMessage").html("${msg}");
        $("div.loginErrorMessageDiv").show();
        </c:if>
 
        $("form.loginForm").submit(function(){
            if(0==$("#name").val().length||0==$("#password").val().length){
                $("span.errorMessage").html("Login please");
                $("div.loginErrorMessageDiv").show();
                return false;
            }
            return true;
        });
 
        $("form.loginForm input").keyup(function(){
            $("div.loginErrorMessageDiv").hide();
        });
 
        var left = window.innerWidth/2+162;
        $("div.loginSmallDiv").css("left",left);
    })
</script>
 
<div id="login">
    <form class="loginForm" action="forelogin" method="post">
            <div class="login_tags">LOGIN</div>  
            <div class="loginInput " >
                <span class="loginInputIcon ">
                    <span class="glyphicon glyphicon-user"></span>
                </span>
                <input id="name" name="name" placeholder="username" type="text">
                <span class="loginInputIcon ">
                    <span class=" glyphicon glyphicon-lock"></span>
                </span>
                <input id="password" name="password" type="password" placeholder="password" type="text">
            </div>
            <div>
                <a class="notImplementLink" href="#nowhere">forget password</a>
                <a href="registerPage" class="pull-right">sign on </a>
            </div>
            <div style="margin-top:20px">
                <button class="btn btn-block redButton" type="submit">login</button>
            </div>
        </div>
    </form>
 
</div>   
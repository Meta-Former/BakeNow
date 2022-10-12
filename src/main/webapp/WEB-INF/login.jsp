<%-- 
    Document   : login
    Created on : 30 Sept 2022, 20:12:09
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/includetop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - BakeNow</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <!--KHÔNG HIỆN GOOGLE LOGIN VÌ THIẾU CÁI LINK NHA MỌI NGƯỜI-->
        <link rel="stylesheet" href="css/header.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <div class="main-container container">
            <div class="loginform_container">
            <h1>Sign In</h1>
            <form method="post" class="login_form">
                <div class="text_feild">
                    <label for="usernameInput">User name</label>
                    <input id="usernameInput" type="text">
                </div>
                <div class="text_feild">
                    <label for="usernameInput">Password</label>
                    <input id="passwordInput" type="password">
                </div>
                <div class="forgotPassword_link">
                    <a href="#">Forgot password?</a>
                </div>
                <div class="button-28">
                    <input type="submit" value="Login">
                </div>
                <div id="my_signin2" class="g-signin2" data-onsuccess="onSignIn"></div>
                <div class="register_link">
                    Don't have an account? <a href="#">Register</a>
                </div>
            </form>
        </div>
        </div>
        <%@include file="/WEB-INF/common/footer.jsp"%>
        <%@include file="/WEB-INF/common/includebottom.jsp"%>
    </body>
</html>

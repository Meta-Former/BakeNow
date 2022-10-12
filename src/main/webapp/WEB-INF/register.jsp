<%-- 
    Document   : register
    Created on : Oct 12, 2022, 8:33:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/includetop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="css/header.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <div class="loginform_container" style="height:650px ;">
            <h1>Sign Up</h1>
            <form method="post" class="login_form">
                <div class="text_feild">
                    <label for="usernameInput">User name (*)</label>
                    <input id="usernameInput" type="text">
                </div>
                <div class="text_feild">
                    <label for="usernameInput">Password (*)</label>
                    <input id="passwordInput" type="password">
                </div>
                <div class="text_feild">
                    <label for="usernameInput">Confirm password (*)</label>
                    <input id="passwordInput" type="password">
                </div>
                <div id="role">
                    <label id="registerAsLabel" for="role">Register as</label>
                    <label for="Baker-option" class="l-radio">
                      <input type="radio" id="Baker-option" name="selector" tabindex="1">
                      <span>Baker</span>
                    </label>
                    <label for="Retailer-option" class="l-radio">
                      <input type="radio" id="Retailer-option" name="selector" tabindex="2">
                      <span>Retailer</span>
                    </label>
                </div>
                <div class="button-28">
                    <input type="submit" value="Register">
                </div>
                <div id="my_signin2" class="g-signin2" data-onsuccess="onSignIn"></div>
                <div class="register_link">
                    Already have an account? <a href="#">Sign in</a>
                </div>
            </form>
        </div>
        <%@include file="/WEB-INF/common/footer.jsp"%>
        <%@include file="/WEB-INF/common/includebottom.jsp"%>
    </body>
</html>

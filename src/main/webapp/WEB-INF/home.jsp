<%-- 
    Document   : index
    Created on : 30 Sept 2022, 20:01:49
    Author     : Admin
--%>

<%@page import="com.bakenow.core.dto.CategoryGroup"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/includetop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog Home - BakeNow</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/header.css">
        
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <c:url var="ToViewRecipe" value="MainController?action=NavToViewRecipe"/>
        <div class="main-container container">

            <!--recipes-->
            <div class="page_title">
            <h1>RECENT RECIPES</h1>
            <div class="button-1" >
                <svg width="50" height="50" viewBox="0 0 50 50" xmlns="http://www.w3.org/2000/svg">
                    <path d="M25 46.875C19.1984 46.875 13.6344 44.5703 9.53204 40.468C5.42968 36.3656 3.125 30.8016 3.125 25C3.125 19.1984 5.42968 13.6344 9.53204 9.53204C13.6344 5.42968 19.1984 3.125 25 3.125C30.8016 3.125 36.3656 5.42968 40.468 9.53204C44.5703 13.6344 46.875 19.1984 46.875 25C46.875 30.8016 44.5703 36.3656 40.468 40.468C36.3656 44.5703 30.8016 46.875 25 46.875ZM25 50C31.6304 50 37.9893 47.3661 42.6777 42.6777C47.3661 37.9893 50 31.6304 50 25C50 18.3696 47.3661 12.0107 42.6777 7.32233C37.9893 2.63392 31.6304 0 25 0C18.3696 0 12.0107 2.63392 7.32233 7.32233C2.63392 12.0107 0 18.3696 0 25C0 31.6304 2.63392 37.9893 7.32233 42.6777C12.0107 47.3661 18.3696 50 25 50Z" />
                    <path d="M25.5 12C25.8812 12 26.2469 12.1646 26.5165 12.4576C26.7861 12.7507 26.9375 13.1481 26.9375 13.5625V22.9375H35.5625C35.9437 22.9375 36.3094 23.1021 36.579 23.3951C36.8486 23.6882 37 24.0856 37 24.5C37 24.9144 36.8486 25.3118 36.579 25.6049C36.3094 25.8979 35.9437 26.0625 35.5625 26.0625H26.9375V35.4375C26.9375 35.8519 26.7861 36.2493 26.5165 36.5424C26.2469 36.8354 25.8812 37 25.5 37C25.1188 37 24.7531 36.8354 24.4835 36.5424C24.214 36.2493 24.0625 35.8519 24.0625 35.4375V26.0625H15.4375C15.0563 26.0625 14.6906 25.8979 14.421 25.6049C14.1515 25.3118 14 24.9144 14 24.5C14 24.0856 14.1515 23.6882 14.421 23.3951C14.6906 23.1021 15.0563 22.9375 15.4375 22.9375H24.0625V13.5625C24.0625 13.1481 24.214 12.7507 24.4835 12.4576C24.7531 12.1646 25.1188 12 25.5 12Z" />
                </svg>
                <p >Create a recipe</p>
            </div>
        </div>  
        <div class="view_recipes">
            <c:forEach begin="1" end="12">
            <div class="recipe">
                <img src="assets/img/img_10.png" alt="img_1">
                <div class="recipe_body">
                    <a href="${pageScope.ToViewRecipe}"<h5 class="recipe_title">Banh Cupcake Nho Kho</h5><a>
                    <p class="recipe_text">By: <a href="#">Peter Parking</a></p><br>
                    <div class="recipe_more">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" stroke="#56D262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M15 16L12.586 13.586C12.2109 13.211 12.0001 12.7024 12 12.172V6" stroke="#56D262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                        <span class="recipe_text" style="margin-top: 0px; padding-left: 3px;">35m</span>
                        <div class="recipe-star">
                            <span class="fa fa-star fa-star-sized checked"></span>
                            <span class="fa fa-star fa-star-sized checked"></span>
                            <span class="fa fa-star fa-star-sized checked"></span>
                            <span class="fa fa-star fa-star-sized"></span>
                            <span class="fa fa-star fa-star-sized"></span>
                            <span class="recipe_text"  style="margin-top: 0px; padding-left: 0px; padding-right: 0px;">(19)</span>
                        </div>
                    </div>
                    <p class="recipe_text-published">Published: 11/7/2022</p>
                </div>
            </div>
            </c:forEach>
            
            </div>
        </div>
        </div>


        <%@include file="/WEB-INF/common/footer.jsp"%>
        <%@include file="/WEB-INF/common/includebottom.jsp"%>
    </body>
</html>

<%-- 
    Document   : cart
    Created on : 9 Oct 2022, 22:07:33
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/shared.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart - BakeNow</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <div class="main-container container">
            <div class="main-container container">
                <c:if test="${sessionScope.SESSION_CART == null or empty sessionScope.SESSION_CART.cartItems}">
                    <div id="pageError" style="color: red;">
                        <h1>
                            GRAB SUMTHIN' ALREADY, WILL YA?!
                        </h1>
                    </div>
                </c:if>
                <c:forEach var="cartItem" items="${sessionScope.SESSION_CART.cartItems}" varStatus="cartItemIdx">
                    <div class="row">
                        <div class="column">
                            <div class="card">
                                <h5>Product #${cartItemIdx.count}</h5>
                                <p>Product ID: ${cartItem.value.product.id}</p>
                                <p>You're trying to buy ${cartItem.value.quantity}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
            <%@include file="/WEB-INF/common/footer.jsp"%>
    </body>
</html>

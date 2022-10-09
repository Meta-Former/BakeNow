<%-- 
    Document   : marketplace
    Created on : 9 Oct 2022, 20:50:30
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/includetop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marketplace - BakeNow</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="css/header.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <div class="main-container container">
            <c:forEach var="product" begin="1" end="4">
                <div class="row">
                    <div class="column">
                        <div class="card">
                            <h5>Product #${product}</h5>
                            <p>Product product product, product! Product product, product product product?</p>
                            <form action="CartController" method="POST">
                                <input type="hidden" name="productId" value="${product}"/>
                                <input type="number" name="quantity" min="1" max="7" value="1"/>
                                <input type="submit" formaction="CartController?action=Add" value="Add to Cart"/>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <%@include file="/WEB-INF/common/footer.jsp"%>
        <%@include file="/WEB-INF/common/includebottom.jsp"%>
    </body>
</html>

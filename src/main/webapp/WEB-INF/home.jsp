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
        <link rel="stylesheet" href="css/header.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            th, td {
                text-align: center;
                padding: 5px 10px;
            }
        </style>
        <table>
            <thead>
            <th>#</th>
            <th>ID</th>
            <th>Name</th>
        </thead>
        <tbody>
            <c:forEach var="recipe" items="${requestScope.LIST_RECIPES}" varStatus="idx">
                <tr>
                    <th>${idx.count}</th>
                    <td>${recipe.id}</td>
                    <td>${recipe.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
        <%@include file="/WEB-INF/common/footer.jsp"%>
        <%@include file="/WEB-INF/common/includebottom.jsp"%>
</body>
</html>

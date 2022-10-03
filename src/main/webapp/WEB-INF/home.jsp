<%-- 
    Document   : index
    Created on : 30 Sept 2022, 20:01:49
    Author     : Admin
--%>

<%@page import="com.bakenow.core.dto.CategoryGroup"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog Home - BakeNow</title>
    </head>
    <body>
        <button onclick="window.location.href = 'MainController?action=NavToLogin'">Login</button>


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
</body>
</html>

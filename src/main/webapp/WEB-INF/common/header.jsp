<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <c:url var="ToHome" value="/"/>
    <c:url var="ToCart" value="MainController?action=NavToCart"/>

    <div class="container">
        <a id="logo" href="${pageScope.ToHome}" aria-label="home" class="col-2">
            <img src="${pageContext.request.contextPath}/assets/logo.png" height="100" width="250" alt="alt" class=""/>
        </a>
        <div class="col-6 searchbox">
            <form class="mb-0" action="MainController">
                <input type="text" name="search" placeholder="Enter a recipe ...">
                <input type="submit" name="action" value="Search">
            </form>
        </div>
        <nav class=" col-2 py-2">
            <ul class="nav">
                <li class="nav-item" width="50" height="50"><a href="#" class="bi bi-megaphone-fill"></a>
                <li class="nav-item"><a href="#" class="bi bi-bell-fill"></a></li>
                <li class="nav-item"><a href="${pageScope.ToCart}" class="bi bi-cart-fill"></a></li>
            </ul>
        </nav>
        <div class="col-2 login">
            <div class="py-2 px-2 login-wrapper">
                <a href="#">Login</a> |
                <a href="#">Register</a>
                <i class="bi bi-person-square"></i>
            </div>
        </div>
    </div>
</header>

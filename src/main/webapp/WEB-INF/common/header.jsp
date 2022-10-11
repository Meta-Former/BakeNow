<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <c:url var="ToHome" value="/"/>
    <c:url var="ToCart" value="MainController?action=NavToCart"/>

    <div style="width:1440px; margin:0 auto;">
        <div class="row">
            <a href="${pageScope.ToHome}" aria-label="home" class="col-2 d-flex justify-content-left align-items-center">
                <img src="${pageContext.request.contextPath}/assets/img/logo.png" height="100" width="250" alt="BakeNow logo"/>
            </a>
            <div class="col-6 py-2 d-flex justify-content-center align-items-center">
                <form class="mb-0" action="MainController">
                    <input type="text" class="py-1" name="search" placeholder="Enter a recipe ..."
                           style="border:none; border-radius:5px; width:550px; padding-left:10px;">
                    <input type="submit" class="py-1" name="action" value="Search" 
                           style="border:none; border-radius:5px;" >
                </form>
            </div>
            <nav class="col-2 py-2 d-flex justify-content-space-around align-items-center">
                    <a href="#"><img src="assets/img/announcement_icon.png" alt="announcement icon"/></a>
                    <a href="#"><img src="assets/img/notification_icon.png" alt="notification icon"/></a>
                    <a href="${pageScope.ToCart}"><img src="assets/img/cart_icon.png" alt="cart icon"/></a>
            </nav>
            <div class="col-2 d-flex justify-content-left align-items-center">
                <div class="py-1 px-2 d-flex" style="border-radius:5px; background-color:#f5f5f5;">
                    <a class="px-2" href="#">Login</a> |
                    <a class="px-2" href="#">Register</a>
                    <image src="assets/img/profile_icon.png" alt="profile icon" style="border:1px solid;">
                </div>
            </div>
        </div>

    </div>
    <div style="width:100%; background-color:#F5F5F5">
        <div class="row align-items-center" style="width:1440px; height:120px; margin:0 auto; background-image: url('assets/img/subheader.jpg'); background-size:cover;">
            <div class="row_subheader d-flex" style="justify-content:space-around">
                <c:url var="blogHomeLink" value="MainController?action=NavToBlogHome"/>
                <button type="button" class="btn btn-outline-dark col-6 nav-recipe" onclick="window.location.href = '${blogHomeLink}';"
                        style="width:20%; margin-left:25%; background-color:#C5C5C5; font-weight:bold">RECIPES</button>
                <c:url var="marketplaceLink" value="MainController?action=NavToMarketplace"/>
                <button type="button" class="btn btn-outline-dark col-6 nav-marketplace"  onclick="window.location.href = '${marketplaceLink}';" 
                        style="width:20%; margin-right:25%; background-color:#C5C5C5; font-weight:bold">MARKETPLACE</button>
            </div>
        </div>
    </div>
</header>

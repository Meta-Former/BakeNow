<%-- 
    Document   : viewProduct
    Created on : Oct 12, 2022, 12:36:20 PM
    Author     : tlminh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/common/shared.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View A Product - BakeNow</title>
        <link rel="stylesheet" href="assets/css/view-product.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <c:url var="toShop" value="MainController?action=NavToShop"/>
        <c:url var="toEditProduct" value="MainController?action=NavToEditProduct"/>
        <c:url var="addToCart" value="MainController?action=AddToCart"/>
        <div id="page_view-product" class="main-container py-3">
            <div class="row">
                <div class="product_info col-7"">
                    <div class="product_info_container">
                        <div class="product_info_title" style="font-size: 30px;">${requestScope.PRODUCT.title}Bơ khối Anchor cắt sẵn</div>
                        <div class="product-star py-2 mx-0">
                            <span class="fa fa-star fa-star-sized checked"></span>
                            <span class="fa fa-star fa-star-sized checked"></span>
                            <span class="fa fa-star fa-star-sized checked"></span>
                            <span class="fa fa-star fa-star-sized"></span>
                            <span class="fa fa-star fa-star-sized"></span>
                            <span class="recipe_text"  style="margin-top: 0px; padding-left: 0px; padding-right: 0px;">(25)</span>
                        </div>
                        <div class="product_owner d-inline-block" style="width: 75%; text-align: left;">
                            From:<a href="${pageScope.ToShop}">${requestScope.RECIPE.shopName}BeeMart HCM</a> 
                        </div>
                        <div class="product_action d-inline-block" style="width: 20%; text-align: end;">
                            <svg id="product_action_icon" width="6" height="22" viewBox="0 0 6 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="3" cy="11" r="3" fill="black"/>
                            <circle cx="3" cy="19" r="3" fill="black"/>
                            <circle cx="3" cy="3" r="3" fill="black"/>
                            </svg>

                            <div id="product_action_option" style="position: absolute; top: 140px; left: 700px; width: 90px; display: none;">
                                <ul style="list-style-type: none; text-align: center; padding: 5px;">
                                    <li><a href="${pageScope.ToEditRecipe}">Edit</a></li>
                                    <li><a href="">Discontinue</a></li>
                                    <li><a href="">Hide</a></li>
                                    <li><a href="">Delete</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="product_img py-2 col-7 d-flex justify-content-end">
                                <image src="assets/img/img_10.png" alt="recipe images" style="width: 256px; height: 256px;">
                            </div>
                            <div class="py-2 col-5 d-flex justify-content-center align-items-end" style="font-size: 35px;">
                                <div style="text-align: center;">
                                    <div class="product_price">35.000 VND</div>
                                    <button type="button" class="btn product_add-to-cart_btn" onclick="window.location.href = '${addToCart}';">
                                        <svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.9704 29.2308C14.9704 29.6301 14.8632 30.0205 14.6623 30.3526C14.4614 30.6847 14.1758 30.9435 13.8417 31.0963C13.5076 31.2491 13.14 31.2891 12.7853 31.2112C12.4306 31.1333 12.1049 30.941 11.8491 30.6586C11.5934 30.3762 11.4193 30.0164 11.3488 29.6247C11.2782 29.233 11.3144 28.827 11.4528 28.458C11.5912 28.0891 11.8255 27.7737 12.1262 27.5518C12.4269 27.33 12.7804 27.2115 13.142 27.2115C13.6269 27.2115 14.092 27.4243 14.4349 27.803C14.7778 28.1816 14.9704 28.6952 14.9704 29.2308ZM25.0267 27.2115C24.665 27.2115 24.3115 27.33 24.0108 27.5518C23.7102 27.7737 23.4758 28.0891 23.3374 28.458C23.199 28.827 23.1628 29.233 23.2334 29.6247C23.3039 30.0164 23.4781 30.3762 23.7338 30.6586C23.9895 30.941 24.3153 31.1333 24.6699 31.2112C25.0246 31.2891 25.3923 31.2491 25.7264 31.0963C26.0605 30.9435 26.346 30.6847 26.5469 30.3526C26.7478 30.0205 26.8551 29.6301 26.8551 29.2308C26.8551 28.6952 26.6624 28.1816 26.3195 27.803C25.9766 27.4243 25.5116 27.2115 25.0267 27.2115ZM30.2148 11.3353L27.1979 22.9964C27.0322 23.6285 26.6854 24.1843 26.2094 24.5802C25.7334 24.9762 25.154 25.1909 24.5581 25.1923H13.6106C13.0147 25.1909 12.4352 24.9762 11.9593 24.5802C11.4833 24.1843 11.1365 23.6285 10.9708 22.9964L7.95392 11.348V11.3227L6.83403 7.01923H4.9142C4.67174 7.01923 4.43921 6.91286 4.26776 6.72352C4.09632 6.53418 4 6.27738 4 6.00962C4 5.74185 4.09632 5.48505 4.26776 5.29571C4.43921 5.10637 4.67174 5 4.9142 5H6.83403C7.23113 5.00159 7.61712 5.14503 7.93431 5.40889C8.2515 5.67275 8.48288 6.04287 8.59387 6.46394L9.5195 10.0481H29.3348C29.4764 10.0479 29.6161 10.0841 29.7429 10.1537C29.8697 10.2234 29.9801 10.3246 30.0654 10.4494C30.1508 10.5742 30.2087 10.7192 30.2346 10.8729C30.2605 11.0267 30.2537 11.185 30.2148 11.3353V11.3353ZM28.1235 12.0673H10.0452L12.7306 22.4411C12.7853 22.6522 12.9008 22.8378 13.0595 22.9699C13.2183 23.102 13.4118 23.1733 13.6106 23.1731H24.5581C24.7569 23.1733 24.9503 23.102 25.1091 22.9699C25.2679 22.8378 25.3834 22.6522 25.438 22.4411L28.1235 12.0673Z" fill="black"/>
                                        </svg>
                                        <span>Add to cart</span<
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product_desc">

                        <div style="font-size: 24px; font-weight: bold; margin: 10px 0;">Description</div>
                        <p style="text-align: justify;">
                            Bơ khối Anchor cắt sẵn là bơ động vật được sử dụng nhiều trong làm bánh. Hàm lượng chất béo cao, ngậy thơm ngon là thành phần cơ bản để làm cốt bánh gatauex, bánh bông lan, bánh cuộn, bánh quy. Ngoài ra bơ còn được dùng để đánh trang trí kem bơ cho bánh gato, sắc nét và ngậy kem.
                            Lưu ý: Sản phẩm chỉ ship tại Hà Nội và Hồ Chí Minh
                            Đặc điểm nổi bật của sản phẩm:
                            Màu sắc: vàng nhạt, hương vị kem tươi 
                            Bơ anchor được cắt và đóng gói theo từng khối lượng cắt.
                            Bơ được dùng và sử dụng rất nhiều trong làm bánh đó nha, đa phần các loại bánh đều cần dùng đến bơ.
                            Do bơ cần bảo quản mát từ nhiệt độ 0 độ C đến -20 độ C nên bơ chỉ được giao hàng trong khu vực nội thành và chuyển hàng đi xa được 
                            Có rất nhiều loại bơ khác nhau như có bơ động vật, thực vật với mỗi loại bơ sẽ có những ưu điểm và được dùng cho các loại bánh khác nhau. Bơ Anchor là bơ động vật với hàm lượng chất béo cao, thơm ngậy được sử dụng rất nhiều nên bạn có thể hoàn toàn yên tâm. Bơ Anchor được xuất xứ tại New Zealand.

                        </p>
                    </div>
                </div>
                <div class="col-5 d-flex justify-content-center">
                    <div class="col-10">
                        <div  class="product_details" style="border: 1px solid #D9D9D9; border-radius: 5px; margin-top: 100px; background-color: #fff; height: fit-content;">
                            <span class="py-2" style="font-size: 24px; font-weight: bold;">Details</span>
                            <ul class="py-1 px-2 list-unstyled">
                                <li class="product_details_item d-flex py-1 px-1">
                                    <div class="col-6">Origin</div>
                                    <div class="col-6">New Zealand</div>
                                </li>
                                <li class="product_details_item d-flex py-1 px-1">
                                    <div class="col-6">Category</div>
                                    <div class="col-6">Bơ</div>
                                </li>
                                <li class="product_details_item d-flex py-1 px-1">
                                    <div class="col-6">Weight</div>
                                    <div class="col-6">200gr</div>
                                </li>
                                <li class="product_details_item d-flex py-1 px-1">
                                    <div class="col-6">Manufacturing Date</div>
                                    <div class="col-6">2020-12-24</div>
                                </li>
                                <li class="product_details_item d-flex py-1 px-1">
                                    <div class="col-6">Expiry Date</div>
                                    <div class="col-6">2022-12-24</div>
                                </li>
                                <li class="product_details_item d-flex py-1 px-1">
                                    <div class="col-6">Stock</div>
                                    <div class="col-6">46</div>
                                </li>
                            </ul>
                        </div>
                        <div class="product_comment_add" style="margin-top: 100px;">
                            <div class="" style="border: 1px solid #D9D9D9; border-radius: 5px; height: fit-content; background-color: #fff;">
                                <span class="py-2 px-2" style="font-size: 24px; font-weight: bold;">Leave your comment here</span>
                                <form class="p-2 mb-0" action="">
                                    <div class="p-1"> 
                                        <textarea type="text" style="height: 150px; vertical-align: text-top; border: 1px solid #D9D9D9;" class="col-12" name="commentContent" placeholder="Share your thought..."></textarea>
                                    </div>
                                    <div class="my-2 d-flex justify-content-end">
                                        <input type="submit" class="px-2 recipe_comment_add_button" style="width: 100px; height: 45px;" name="action" value="Post">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row product_interaction">
                <div class="product_review_container col-6 d-flex justify-content-center">
                    <div class="product_review col-11 p-2">
                        <ul class="py-1 px-2 list-unstyled">
                            <c:forEach begin="1" end="3">
                                <li class="p-1 my-1" style="border: 1px solid #D9D9D9; border-radius: 5px; background-color: #fff;">
                                    <div class="d-flex" style="padding: 5px;">
                                        <img class="col-1 align-items-center" src="assets/img/profile_icon.png" alt="profile image" style="width:35px; height:35px; border: 1px solid #D9D9D9; border-radius: 100px;"/>
                                        <div class="col-7 px-1">
                                            <a href="${pageScope.ToProfile}">${requestScope.RECIPE.authorName}Nguyễn Văn A</a>
                                            <div class="product_review_time" style="font-size: 14px;">20/09/2022 15:35</div>
                                        </div>
                                        <div class="col-4 d-flex justify-content-end">
                                            <span class="fa fa-star fa-star-sized checked"></span>
                                            <span class="fa fa-star fa-star-sized checked"></span>
                                            <span class="fa fa-star fa-star-sized checked"></span>
                                            <span class="fa fa-star fa-star-sized"></span>
                                            <span class="fa fa-star fa-star-sized"></span>
                                        </div>
                                    </div>
                                    <hr style="margin: 1px; color: #D9D9D9; height: 3px;">
                                    <div class="product_review_content p-1">
                                        Đã thử và nhận ra bánh quá ngon đến nỗi ăn mấy ngày chưa hết!!!.
                                    </div>

                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="product_comment_container col-6 d-flex justify-content-center">
                    <div class="product_comment col-11 p-2">
                        <ul class="py-1 px-2 list-unstyled">
                            <c:forEach begin="1" end="3">
                                <li class="p-1 my-1" style="border: 1px solid #D9D9D9; border-radius: 5px; background-color: #fff;">
                                    <div class="d-flex" style="padding: 5px;">
                                        <img class="col-1 align-items-center" src="assets/img/profile_icon.png" alt="profile image" style="width:35px; height:35px; border: 1px solid #D9D9D9; border-radius: 100px;"/>
                                        <div class="col-11 px-1">
                                            <a href="${pageScope.ToProfile}">${requestScope.RECIPE.authorName}Nguyễn Văn A</a>
                                            <div class="product_comment_time" style="font-size: 14px;">20/09/2022 15:35</div>
                                        </div>
                                    </div>
                                    <hr style="margin: 1px; color: #D9D9D9; height: 3px;">
                                    <div class="product_comment_content p-1">
                                        Đã thử và nhận ra bánh quá ngon đến nỗi ăn mấy ngày chưa hết!!!.
                                    </div>
                                    <div class="product_comment_reply py-2 d-flex justify-content-end">
                                        <button type="button" class="product_comment_reply_button btn px-2" style="width: 100px;" onclick="window.location.href = '${replyComment}';">Reply</button>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/WEB-INF/common/footer.jsp"%>
        <script>
            document.getElementById("product_action_icon").onclick = () => {
                if (document.getElementById("product_action_option").style.display === "block") {
                    document.getElementById("product_action_option").style.display = "none";
                } else if (document.getElementById("product_action_option").style.display === "none") {
                    document.getElementById("product_action_option").style.display = "block";
                }

            };
        </script>
    </body>
</html>

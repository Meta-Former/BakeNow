<%-- 
    Document   : createRecipe
    Created on : Oct 12, 2022, 12:48:29 PM
    Author     : tlminh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/common/includetop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Recipe - BakeNow</title>
        <link rel="stylesheet" href="assets/css/create-recipe.css">
    </head>
    <body>
        <%@include file="/WEB-INF/common/header.jsp"%>
        <div class="main-container py-3">
            <div class="create_recipe_container d-flex justify-content-center">
                <div class="create_recipe col-10">
                    <div class="col-10" style="font-size: 40px; font-weight: 600; letter-spacing: 0.15em; width: 550px; color: #5F6440; border-bottom: 4px solid #56D262">
                        CREATE NEW RECIPE
                    </div>
                    <div class="d-flex justify-content-center my-3 py-3" style="background-color: #fff;">
                        <form action="" class="create_recipe_form col-10">
                            <div class="py-2" > 
                                <span style="font-size: 24px; font-weight: bold;">Title</span> <input type="text" style="width: 500px; padding-left: 10px;" name="title" placeholder="Choose a recipe title..." required="">
                            </div>
                            <div class="py-2" > 
                                <span style="font-size: 24px; font-weight: bold;">Time to make</span> <input type="number" style="width: 75px; padding-left: 10px;" name="cookTime" required="">
                            </div>
                            <div class="py-2 d-flex justify-content-center">
                                <div class="col-4 py-2">
                                    <image src="assets/img/img_10.png" style="height: 256px; width: 256px; display: block; margin: 0 auto;">
                                    <div style="text-align: center;">
                                        <input class="my-2 px-4" style="width: 300px; border: none;" type="file" name="img">
                                    </div>
                                </div>
                            </div>
                            <div class="py-2" > 
                                <div class="my-2" style="font-size: 24px; font-weight: bold;">Instruction</div>
                            </div>
                            <div class="recipe_step">
                                <div style="font-size: 20px; padding-left: 10px">Step 1</div>
                                <textarea class="my-2 py-2" type="text" style=" padding-left: 10px; width: 100%; height: 150px;" name="title" placeholder="Write an instruction..." required=""></textarea>
                            </div>
                            <div id="add_step" class="" style="height: 45px; width: 110px; padding: 10px; border: 1px solid #D9D9D9; border-radius: 5px;"></div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/WEB-INF/common/footer.jsp"%>
        <!--<script src="assets/js/create-recipe.js"></script>-->
        <script>
            document.getElementById("add_step").onclick = function () {
//                var step = document.createElement('div');
//                step.setAttribute("style", "font-size: 20px; padding-left: 10px");
//                step.innerHTML = 'Step 2';
//                var content = document.createElement('textarea');
//                content.setAttribute("class", "my-2 py-2");
//                content.setAttribute("type", "text");
//                content.setAttribute("style", "padding-left: 10px; width: 100%; height: 150px;");
//                content.setAttribute("name", "step_content");
//                content.setAttribute("placeholder", "Write an instruction...");
//                content.setAttribute("required", "");
//                step.appendChild(content);
//
//                document.getElementById()("add_step").appendChild(step);
            document.getElementsByTagName(body)[0].style.backgroundColor = "red";
            };
        </script>
    </body>
</html>

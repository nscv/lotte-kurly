<%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-18
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="/css/productlist.css">

    <script>
        $(function () {
            //foodselectlist();
        });

        function foodlowlist() {
            $.ajax({
                url: "productlowlist",
                type: "get",
                dataType:"json",
                error: function (xhr, status, msg) {
                    alert("상태값: " + status + "에러" + msg);
                },
                success: function (data) {
                    console.log(data);
                }
            });
        };

    </script>
</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<div id="container">
    <jsp:include page="/front/nav.jsp"></jsp:include>
    <div class="goods">
        <div id="goodslist" class="goodslist-box">
            <div class="sort_menu">
                <div>
                    <p class="count"><span class="inner-count"> 총 개 </span></p>
                </div>
                <div class="select-type">
                    <ul class="list">
                        <li class>
                            <a class="select-sell">판매순</a>
                        </li>
                        <li class>
                            <a class="select-review">리뷰순</a>
                        </li>
                        <li class>
                            <a href="/product/lowlist?category=${category}" class="select-asc">낮은 가격순</a>
                        </li>
                        <li class>
                            <a href="/product/highlist?category=${category}" class="select-desc">높은 가격순</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="list-goods">

                <ul class="list">
                    <div class="inner-title">
                        <h4 class="category-title">${categoryName}</h4>
                    </div>
                    <c:forEach items="${list}" var="m">
                        <li>
                            <div class="item">
                                <div class="thumb">
                                    <img class="product-img" id="${m.productNo}" src="${m.productImgNewName}" onclick="imageDataToNav(this.id)">
                                    <div class="group-btn">
                                        <button type="button" class="btn cart-btn"></button>
                                    </div>
                                </div>
                                <div class="info">
                                    <span class="name">${m.productName}</span>
                                    <span class="cost">
                                    <span class="price">${m.productPrice}</span>
                                </span>
                                    <span class="simple-content">${m.productSimpleContent}</span>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="pagediv">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#"><i class="fa fa-long-arrow-right">[>]</i></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-18
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="/css/productlist.css">

</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<div id="container">
    <jsp:include page="/front/nav.jsp"></jsp:include>
    <div class="goods">
        <div id="goodslist" class="goodslist-box">
            <div class="sort_menu">
                <div>
                    <p class="count"><span class="inner-count"> 총 ${total}개 </span></p>
                </div>
                <div class="select-type">
                    <ul class="list">
                        <li class>
                            <a href="/product/list?amount=true&category=${category}&pageNo=0" class="select-asc">판매량 순</a>
                        </li>
                        <li class>
                            <a href="/product/list?category=${category}&pageNo=0&discount=true" class="select-asc">할인 품목</a>
                        </li>
                        <li class>
                            <a href="/product/list?low=true&category=${category}&pageNo=0" class="select-asc">낮은 가격순</a>
                        </li>
                        <li class>
                            <a href="/product/list?high=true&category=${category}&pageNo=0" class="select-desc">높은 가격순</a>
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
                                        <c:if test="${m.discountPrice==0}">
                                            <span class="price">${m.productPrice}</span>
                                        </c:if>
                                        <c:if test="${m.discountPrice!=0}">
                                            <span style="text-decoration:line-through; color:#999999;">${m.productPrice}</span> →${m.discountPrice}
                                        </c:if>

                                </span>
                                    <span class="simple-content">${m.productSimpleContent}</span>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <ul class="pagination">
                <li class="disabled">
                    <a href="/product/list?low=${low}&high=${high}&category=${category}&pageNo=0">
                        <span>«</span>
                    </a>
                </li>
                <c:forEach var="i" begin="${startPage}" end="${endPage}">
                    <li><a href="/product/list?low=${low}&high=${high}&category=${category}&pageNo=${i}">${i}</a></li>
                </c:forEach>
                <li><a href="/product/list?low=${low}&high=${high}&category=${category}&pageNo=${endPage}"><span>»</span></a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-18
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>베스트 상품</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="/css/productlist.css">
</head>

<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>

<div id="container">
    <div class="goods">

        <div id="goodslist" class="goodslist-box">

            <div class="list-goods">

                <ul class="list">
                    <div class="inner-title">
                        <h4 class="category-title">베스트 상품</h4>
                    </div>
                    <div class="sort_menu">
                        <div>
                            <p class="count"><span class="inner-count"> 총 ${total}개 </span></p>
                            <div class="select-type">
                                <ul class="list">
                                    <li class>
                                        <a href="/product/bestproduct?amount=true&pageNo=0" class="select-asc">판매량 순</a>
                                    </li>
                                    <li class>
                                        <a href="/product/bestproduct?pageNo=0&discount=true" class="select-asc">할인
                                            품목</a>
                                    </li>
                                    <li class>
                                        <a href="/product/bestproduct?low=true&pageNo=0" class="select-asc">낮은 가격순</a>
                                    </li>
                                    <li class>
                                        <a href="/product/bestproduct?high=true&pageNo=0" class="select-desc">높은 가격순</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <c:forEach items="${list}" var="m">
                        <li class="goods-li">
                            <div class="item">
                                <div class="thumb">
                                    <img class="product-img" id="${m.productNo}" src="${m.productImgNewName}"
                                         onclick="imageDataToNav(this.id)">
                                    <div class="group-btn">
                                        <button type="button" class="btn cart-btn"></button>
                                    </div>
                                </div>
                                <div class="info">
                                    <span class="name">${m.productName}</span>
                                    <span class="cost">
                                        <c:if test="${m.discountPrice==0}">
                                            <span class="price"><fmt:formatNumber value="${m.productPrice}"
                                                                                  pattern="###,###"/> </span>
                                        </c:if>
                                        <c:if test="${m.discountPrice!=0}">
                                            <span style="text-decoration:line-through; color:#999999;"><fmt:formatNumber
                                                    value="${m.productPrice}"
                                                    pattern="###,###"/> </span> →<fmt:formatNumber
                                                value="${m.discountPrice}" pattern="###,###"/>
                                        </c:if>

                                </span>
                                    <span class="simple-content">${m.productSimpleContent}</span>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div class="page-box">
    <ul class="pagination">
        <li class="disabled">
            <a href="/product/bestproduct?low=${low}&high=${high}&discount=${discount}&pageNo=0">
                <span>«</span>
            </a>
        </li>
        <c:forEach var="i" begin="${startPage}" end="${endPage}">
            <li class="page-number"><a href="/product/bestproduct?low=${low}&high=${high}&discount=${discount}&pageNo=${i}">${i}</a></li>
        </c:forEach>
        <li style="margin-left: 10px;"><a href="/product/bestproduct?low=${low}&high=${high}&discount=${discount}&pageNo=${endPage}"><span>»</span></a>
        </li>
    </ul>

    </div>
</div>

</body>
</html>

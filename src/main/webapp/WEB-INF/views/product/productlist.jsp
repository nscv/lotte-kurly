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
    <link rel="stylesheet" type="text/css" href="css/productlist.css">
</head>
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
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<%--
<div>
    <td>
        <div id="select" title="경기를선택하세요">
            <c:forEach items="${list}" var="m">
                <div value="${m.productNo}">${m.productName},${m.productPrice}</div>
            </c:forEach>
        </div>
    </td>
</div>
--%>

<div id="container">
    <div class="goods">
        <div class="inner-title">
            <h4 class="title">카테고리명</h4>
        </div>
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
                            <a href="/productlowlist" class="select-asc">낮은 가격순</a>
                        </li>
                        <li class>
                            <a href="/producthighlist" class="select-desc">높은 가격순</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="list-goods">
                <ul class="list">
                    <c:forEach items="${list}" var="m">
                        <li>
                            <div class="item">
                                <div class="thumb">
                                    <a class="img" style="background-image: url(../../../css/product-img.png);">
                                        <img src="../../../css/product-img.png"></a>
                                    <div class="group-btn">
                                        <button type="button" class="btn cart-btn"></button>
                                    </div>
                                </div>
                                <div class="info">
                                    <span class="name">${m.productName}</span>
                                    <span class="cost">
                                    <span class="price">${m.productPrice}</span>
                                </span>
                                    <span class="simple-content">여기는 간단 설명을 넣어주세요</span>
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

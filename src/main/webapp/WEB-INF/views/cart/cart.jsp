<%--
  Created by IntelliJ IDEA.
  User: nayeon
  Date: 2022/07/21
  Time: 1:45 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lotte Kurly - 장바구니</title>

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <!-- Ajax -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/cart.css">

</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>

<div id="container">
    <jsp:include page="/front/nav.jsp"></jsp:include>

    <div class="cart-container">
        <!-- 장바구니 목록 영역 -->
        <div class="row">
            <div class="col-2">전체 선택</div>
            <div class="col-2">선택 삭제</div>
        </div>
        <hr>

        <!-- 장바구니 아이템 목록 영역 (동적 생성 영역) -->
        <div class="cart-item-list-div">

        </div>
        <br><br>
        <div class="cart-items-total-price row">

        </div>
        <div class="row">
            <button onclick="location.href='/order/sheet'">주문하기</button>
        </div>
    </div>
</div>

<script type="text/javascript" src="/js/cart.js"></script>

</body>
</html>

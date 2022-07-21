<%--
  Created by IntelliJ IDEA.
  User: nayeon
  Date: 2022/07/21
  Time: 4:52 오후
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

    <link rel="stylesheet" href="/css/order.css">
    <script type="text/javascript" src="/js/order.js"></script>

</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>

<div id="container">
    <jsp:include page="/front/nav.jsp"></jsp:include>

    <div class="order-sheet-container">
        <!-- 장바구니 상품 리스트 -->
        <div class="row order-cart-item-list-div">
            <h3>주문 상품</h3>
            <hr>
        </div>

        <!-- 주문자 정보 -->
        <div class="row order-user-info-div">
            <h3>주문자 정보</h3>
            <hr>


        </div>

        <!-- 배송지 정보 -->
        <div class="row order-address-div">
            <h3>배송 정보</h3>
            <hr>

            <div class="row">
                <div class="col-8 order-delivery-div">

                </div>
                <div class="col-4 order-payment-div">

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: nayeon
  Date: 2022/07/21
  Time: 9:16 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Integer orderNo = Integer.parseInt(request.getParameter("orderNo"));
%>
<script>
  var orderNo = "<%=orderNo%>"
</script>
<html>
<head>
  <title>Lotte Kurly - 주문 상세 내역</title>
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
  <script type="text/javascript" src="/js/orderlist.js"></script>

</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>

<div id="container">
  <jsp:include page="/front/nav.jsp"></jsp:include>
  <div class="order-list-container">
    <div class="order-list-div">
      <!-- 주문 리스트 -->
      <div class="order-div">
        <!-- 주문 시간 -->
        <div>
          2022-07-22 00:00:00
        </div>
        <!-- 주문 정보 -->
        <!-- 주문 시간 및 상세보기 페이지 버튼 -->
        <div class="row">
          <div class="col-10">오리엔탈 드레싱 외 6건</div>
          <div class="col-2">
            <button onclick="location.href='/order/detail'">주문 상세</button>
          </div>
        </div>
        <hr>
        <div class="row">
          <!-- 상품 이미지 -->
          <div class="col-2">

          </div>
          <!-- 주문 정보 -->
          <div class="col-8">
            <div>주문 번호</div>
            <div>결제 금액</div>
            <div>주문 상태</div>
          </div>
          <!-- 주문 취소 버튼 -->
          <div class="col-2">
            <button>주문 취소</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="/front/footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/orderdetail.js"></script>
</body>
</html>



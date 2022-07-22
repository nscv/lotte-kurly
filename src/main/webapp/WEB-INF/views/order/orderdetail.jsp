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



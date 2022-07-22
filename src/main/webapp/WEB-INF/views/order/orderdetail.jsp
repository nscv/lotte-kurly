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
<%
  String userno = "-1";
  String isvalid = "";
  Cookie[] cookies = request.getCookies() ;
  if(cookies != null){
    for(int i=0; i < cookies.length; i++){
      if (cookies[i].getName().equals("userno")) {
        userno = cookies[i].getValue();
      }
    }
  }
%>
<%
  if(userno.equals("-1")) {
%>
<script>
  alert("로그인이 필요합니다.");
  location.href="/product/main";
</script>
<%
  }
%>

<script>
  var userNo = "<%=userno%>";
</script>
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

  <!-- Custom CSS -->
  <link rel="stylesheet" href="/css/order.css">
  <link rel="stylesheet" href="/css/cart.css">

</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>
<div class="wrap cf">
  <h1 class="projTitle">주문내역 상세</h1>
  <div class="cart">
    <div class="cart-item-list">
      <ul class="order-list-div">

      </ul>
    </div>
  </div>
</div>
<jsp:include page="/front/footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/orderdetail.js"></script>
</body>
</html>



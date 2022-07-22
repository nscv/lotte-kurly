<%--
  Created by IntelliJ IDEA.
  User: nayeon
  Date: 2022/07/21
  Time: 5:17 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<html>
<head>
    <title>Lotte Kurly - 주문 목록</title>
    <link rel="stylesheet" href="/css/cart.css">
    <link rel="stylesheet" href="/css/order.css">
</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>
<div class="wrap cf">
    <h1 class="projTitle">전체 주문내역</h1>
    <div class="cart">
        <div class="cart-item-list">
            <ul class="order-list-div">

            </ul>
        </div>
    </div>
</div>
<jsp:include page="/front/footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/orderlist.js"></script>
</body>
</html>


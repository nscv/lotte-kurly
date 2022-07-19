<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-18
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="header.css">

</head>
<body>


<div id="header-logo">
    <h1 class="logo">
        <img src="images/lotte-kurly logo.png" class="logo-img">
    </h1>
</div>
<%--<div id="menubar">--%>
<%--    <h2 class="menu">--%>
<div class="menubar-box">
    <div class="inner-menu">
        <%--
        <div class="search">
            <form>
                <input type="text" label="검색어" placeholder="검색어를 입력해주세요." class="input-search">
                <input type="image" src="images/search.png" class="search-btn">
            </form>
        </div>
        --%>
        <ul class="menu-item">
            <li class="menu1">
                <a href=""><span class="menu-img"></span><span class="txt">전체 카테고리</span></a>
            </li>
            <li class="menu2">
                <a href=""><span class="txt">베스트 상품</span></a>
            </li>
            <li class="menu3">
                <a href=""> <span class="txt">주문 내역</span></a>
            </li>
            <li class="menu4">
                <a href=""><span class="txt">로그인 | 회원가입</span></a>
            </li>
            <li class="menu5">
                <a href=""><input type="image" src="images/cart.png" class="cart-btn"></a>
            </li>
        </ul>
    </div>
</div>

<%--    </h2>--%>

<%--</div>--%>
</body>
</html>

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
    <link rel="stylesheet" type="text/css" href="/front/header.css">

</head>
<body>


<div id="header-logo">
    <h1 class="logo">
        <img src="/front/images/lotte-kurly logo.png" class="logo-img">
    </h1>
</div>
<style>
    .items ul{
        width: 25%;
        text-align: center;
        line-height: 20px;
        height: 50px;
        display: none;
    }
    .items li a {
        display: block;
    }
    .menu1:hover .items ul{
        display: block;
    }
    .menu1:focus .items ul{
        display: block;
    }
</style>
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
                <div class="items" style="position: absolute;flex-direction: column;top:60px;">
                    <ul>
                        <li><a href="/product/list?category=907">채소</a></li>
                        <li><a href="/product/list?category=908">과일·견과·쌀</a></li>
                        <li><a href="/product/list?category=909">수산·해산·건어물</a></li>
                        <li><a href="/product/list?category=910">정육·계란</a></li>
                        <li><a href="/product/list?category=911">국·반찬·메인요리</a></li>
                        <li><a href="/product/list?category=912">샐러드·간편식</a></li>
                        <li><a href="/product/list?category=913">면·양념·오일</a></li>
                        <li><a href="/product/list?category=914">생수·음료·우유·커피</a></li>
                        <li><a href="/product/list?category=249">간식·과자·떡</a></li>
                        <li><a href="/product/list?category=915">베이커리·치즈·델리</a></li>
                        <li><a href="/product/list?category=032">건강식품</a></li>
                        <li><a href="/product/list?category=722">와인</a></li>
                        <li><a href="/product/list?category=951">전통주</a></li>
                        <li><a href="/product/list?category=918">생활용품·리빙·캠핑</a></li>
                        <li><a href="/product/list?category=233">스킨케어·메이크업></a></li>
                        <li><a href="/product/list?category=12">헤어·바디·구강</a></li>
                        <li><a href="/product/list?category=916">주방용품</a></li>
                        <li><a href="/product/list?category=85">가전제품</a></li>
                        <li><a href="/product/list?category=991">반려동물</a></li>
                        <li><a href="/product/list?category=919">베이비·키즈·완구</a></li>
                    </ul>
                </div>
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
                <a href=""><input type="image" src="/front/images/cart.png" class="cart-btn"></a>
            </li>
        </ul>

    </div>

</div>

<%--    </h2>--%>

<%--</div>--%>
</body>
</html>

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
    <%-- 카카오 로그인 --%>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <%-- ajax --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <%-- sweetalert --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
</head>
<body>

<%
    String userno = "-1";
    String isvalid = "-1";
    Cookie[] cookies = request.getCookies() ;
    if(cookies != null){
        for(int i=0; i < cookies.length; i++){
            if (cookies[i].getName().equals("userno")) {
                userno = cookies[i].getValue();
            } else if (cookies[i].getName().equals("isvalid")) {
                isvalid = cookies[i].getValue();
            }
        }
    }

%>

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
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/25040bd0-5889-4d8c-b863-13f71750a8e6"><a href="/product/list?category=907&pageNo=0">채소</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/f68cee74-477c-44da-8c87-62618e9d55e5"><a href="/product/list?category=908&pageNo=0">과일·견과·쌀</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/c4256803-f1ec-4ac5-87a5-b68d3d23f6e0"><a href="/product/list?category=909&pageNo=0">수산·해산·건어물</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/34168b18-94ee-4946-8430-0a6239054ad6"><a href="/product/list?category=910&pageNo=0">정육·계란</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/3067199c-f080-4205-b7a4-bb1b6eef5d12"><a href="/product/list?category=911&pageNo=0">국·반찬·메인요리</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/82ae12ba-4876-455d-82e8-c6997613559b"><a href="/product/list?category=912&pageNo=0">샐러드·간편식</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/28f2b10d-a0b9-4ecc-bb51-325d01197326"><a href="/product/list?category=913&pageNo=0">면·양념·오일</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/df435e92-3356-4717-b765-567ed9fb9fc1"><a href="/product/list?category=914&pageNo=0">생수·음료·우유·커피</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/15449666-5758-44db-bb71-620d2736664c"><a href="/product/list?category=249&pageNo=0">간식·과자·떡</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/d0f84ec7-7391-44e7-ad4d-962ba4b52443"><a href="/product/list?category=915&pageNo=0">베이커리·치즈·델리</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/9044b1a5-e992-408d-acda-7acdbd3c8e53"><a href="/product/list?category=032&pageNo=0">건강식품</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/753de9b2-895c-469a-b7dd-04fe27099f35"><a href="/product/list?category=722&pageNo=0">와인</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/bbb8804f-0606-455f-a002-48e534e30632"><a href="/product/list?category=951&pageNo=0">전통주</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/69bbc1c2-148f-445a-bef6-dae71034f710"><a href="/product/list?category=918&pageNo=0">생활용품·리빙·캠핑</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/800f92b0-3138-4cda-bc3b-94b174ba7988"><a href="/product/list?category=233&pageNo=0">스킨케어·메이크업></a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/43ccbbc6-d484-45a2-bc23-86451c2793e8"><a href="/product/list?category=12&pageNo=0">헤어·바디·구강</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/58ca8f5e-4dc8-4fee-99d9-bf14092fc29a"><a href="/product/list?category=916&pageNo=0">주방용품</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/de135ae2-216e-4d04-8736-103ecf69d35f"><a href="/product/list?category=85&pageNo=0">가전제품</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/e5fcc642-fded-4e32-9cc3-7184f4209bcf"><a href="/product/list?category=991&pageNo=0">반려동물</a></li>
                        <li><img src="https://img-cf.kurly.com/category/icon/pc/0b8d3f56-5c59-4e1e-9721-3a35b50dbe61"><a href="/product/list?category=919&pageNo=0">베이비·키즈·완구</a></li>
                    </ul>
                </div>
            </li>

            <li class="menu2">
                <a href="/product/bestproduct"><span class="txt">베스트 상품</span></a>
            </li>
            <li class="menu3">
<%--                <a href="javascript:addprofile();"> <span class="txt">주문 내역</span></a>--%>
                     <a href="/order/list"> <span class="txt">주문 내역</span></a>
            </li>
            <li class="menu4">
                <a href=""> <span class="txt">마이페이지</span></a>
            </li>
            <%
                if(userno.equals("-1")){
            %>
            <li class="menu5">
                <a href="javascript:loginWithKakao();"><span class="txt">로그인 | 회원가입</span></a>
            </li>
            <%
                }else {
            %>
            <li class="menu5">
                <a href="javascript:kakaoLogout();"><span class="txt">로그아웃</span></a>
            </li>
            <%
                }
            %>
<<<<<<< HEAD


            <li class="menu5">
                <a href="/cart"><input type="image" src="/front/images/cart.png" class="cart-btn"></a>
=======
            <li class="menu6">
                <a href="" style="width: 100px;"><input type="image" src="/front/images/cart.png" class="cart-btn"></a>
>>>>>>> origin/dev
            </li>
        </ul>

    </div>

</div>

<%-- 카카오 초기화 --%>
<script type="text/javascript">
    // Kakao.init('8c4fa2c21bc60a51d0d78927368eb06d');
    // Kakao.isInitialized();
</script>

<%-- 카카오 로그인 --%>
<script type="text/javascript">
    function loginWithKakao() {
        Kakao.Auth.login({
            success: function(authObj) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function(response) {
                        let email = response.kakao_account.email;
                        $.ajax({
                            type:"get",
                            url:"/userdata",
                            data:{"email": email},
                            success:function( data ){
                                console.log(data)
                                setCookie("isvalid", data.substring(0,1), 60);
                                setCookie("userno", data.substring(1), 60);
                                Swal.fire({
                                    title: '로그인 성공',
                                    text: "환영합니다.",
                                    icon: 'warning',
                                    confirmButtonColor: '#3085d6',
                                    confirmButtonText: '확인',
                                }).then((result) => {
                                    location.href = "/";
                                })
                            },
                            error:function(){
                                alert("error");
                            }
                        });
                    },
                    fail: function(error) {
                        console.log(error);
                    }
                });
            },
            fail: function(err) {
                alert(JSON.stringify(err))
            },
        })
    }
</script>

<%-- 카카오 로그아웃 --%>
<script type="text/javascript">
    function kakaoLogout() {
        if (!Kakao.Auth.getAccessToken()) {
            alert('로그인 해주세요')
            return
        }
        Kakao.Auth.logout(function() {
            deleteCookie("isvalid");
            deleteCookie("userno");
            alert('정상적으로 로그아웃 되었습니다')
            location.href = "/";
        })
    }
</script>

<script>
    <%-- 쿠키값 Set --%>
    function setCookie(cookieName, value, exdays) {
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + exdays);
        var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" +
            exdate.toGMTString());
        var setcookie = cookieName + "=" + cookieValue + ";path=/;"
        document.cookie = setcookie;
    }

    <%-- 쿠키값 Delete --%>
    function deleteCookie(cookieName) {
        var expireDate = new Date();
        expireDate.setDate(expireDate.getDate() - 1);
        document.cookie = cookieName + "= " + ";path=/; expires=" + expireDate.toGMTString();
    }

    <%-- 쿠키값 가져오기 --%>
    function getCookie(cookie_name) {
        var x, y;
        var val = document.cookie.split(';');

        for (var i = 0; i < val.length; i++) {
            x = val[i].substr(0, val[i].indexOf('='));
            y = val[i].substr(val[i].indexOf('=') + 1);
            x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기

            if (x == cookie_name) {
                return unescape(y); // unescape로 디코딩 후 값 리턴
            }
        }
    }
</script>


<script>
    function addprofile() {
        console.log('dafeafdf')
        console.log(getCookie("userno"));
        // document.getElementById("userNo").value = getCookie("userno");
        // submit();
    }

    <%-- 쿠키값 가져오기 --%>
    function getCookie(cookie_name) {
        let cookieKey = cookie_name + "=";
        let result = "";
        const cookieArr = document.cookie.split(";");
        var cookieData = document.cookie;
        console.log('asdfawef')
        console.log(cookieData);
        // for(let i = 0; i < cookieArr.length; i++) {
        //     console.log(cookieArr[i]);
        //     console.log(i);
        //     if(cookieArr[i][0] === " ") {
        //         cookieArr[i] = cookieArr[i].substring(1);
        //     }
        //
        //     if(cookieArr[i].indexOf(cookieKey) === 0) {
        //         result = cookieArr[i].slice(cookieKey.length, cookieArr[i].length);
        //         return result;
        //     }
        // }
        return result;
    }
</script>
<%--    </h2>--%>

<%--</div>--%>
</body>
</html>

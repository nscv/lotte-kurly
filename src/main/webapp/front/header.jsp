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
    <link rel="stylesheet" type="text/css" href="/css/header.css">
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
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
                <a href="javascript:addprofile();"> <span class="txt">주문 내역</span></a>
            </li>
            <%
                if(userno.equals("-1")){
            %>
            <li class="menu4">
                <a href="javascript:loginWithKakao();"><span class="txt">로그인 | 회원가입</span></a>
            </li>
            <%
                }else {
            %>
            <li class="menu4">
                <a href="javascript:kakaoLogout();"><span class="txt">로그아웃</span></a>
            </li>
            <%
                }
            %>


            <li class="menu5">
                <a href=""><input type="image" src="/front/images/cart.png" class="cart-btn"></a>
            </li>
        </ul>
    </div>
</div>

<%-- 카카오 초기화 --%>
<script type="text/javascript">
    Kakao.init('8c4fa2c21bc60a51d0d78927368eb06d');
    Kakao.isInitialized();
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

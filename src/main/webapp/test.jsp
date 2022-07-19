<%--
  Created by IntelliJ IDEA.
  User: BTC-N16
  Date: 2022-07-18
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<a id="custom-login-btn" href="javascript:loginWithKakao()">
    <img
            src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
            width="222"
            alt="카카오 로그인 버튼"
    />
</a>
<p id="reauthenticate-popup-result"></p>

<button class="api-btn" onclick="kakaoLogout()">로그아웃</button>

<script>
    Kakao.init('4d1919a131bf6dfaff98129b0bf29156');
    Kakao.isInitialized();
</script>

<script type="text/javascript">
    function loginWithKakao() {
        Kakao.Auth.login({
            success: function(authObj) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function(response) {
                        console.log(response);
                        /*
                        nickname, profile_image, email, age_range, birthday, gender
                        */
                        console.log(JSON.stringify(authObj))
                        /*
                        access_token, token_type, refresh_token, id_token, expires_in, scope, refresh_token_expires_in
                        */
                        $.ajax({
                            type:"get",
                            url:"userdata",
                            data:{"email": "qwer@qwer.com"},
                            success:function( data ){
                                alert("success");
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

<script type="text/javascript">
    function kakaoLogout() {
        if (!Kakao.Auth.getAccessToken()) {
            alert('Not logged in.')
            return
        }
        Kakao.Auth.logout(function() {
            alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
        })
    }
</script>

<button class="api-btn" onclick="unlinkApp()">앱 탈퇴하기</button>

<script type="text/javascript">
    function unlinkApp() {
        Kakao.API.request({
            url: '/v1/user/unlink',
            success: function(res) {
                alert('success: ' + JSON.stringify(res))
            },
            fail: function(err) {
                alert('fail: ' + JSON.stringify(err))
            },
        })
    }
</script>

<%--

<a id="kakao-login-btn"></a>
<button class="api-btn" onclick="unlinkApp()">앱 탈퇴하기</button>
<div id="result"></div>
<script type="text/javascript">
    function unlinkApp() {
        Kakao.Auth.logout()
        Kakao.API.request({
            url: '/v1/user/unlink',
            success: function(res) {
                alert('success: ' + JSON.stringify(res))
            },
            fail: function(err) {
                alert('fail: ' + JSON.stringify(err))
            },
        })
    }
</script>

<script type="text/javascript">
    Kakao.init('4d1919a131bf6dfaff98129b0bf29156');
    console.log(Kakao.isInitialized());
    Kakao.Auth.authorize({
        redirectUri: '${"http://localhost:8050/login.jsp"}'
    });
    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function(authObj) {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(result) {
                    console.log(result);
                    $('#result').append(result);
                    id = result.id
                    connected_at = result.connected_at
                    kakao_account = result.kakao_account
                    $('#result').append(kakao_account);
                    resultdiv="<h2>로그인 성공 !!"
                    resultdiv += '<h4>id: '+id+'<h4>'
                    resultdiv += '<h4>connected_at: '+connected_at+'<h4>'
                    email ="";
                    gender = "";
                    if(typeof kakao_account != 'undefined'){
                        email = kakao_account.email;
                        gender = kakao_account.gender;
                    }
                    resultdiv += '<h4>email: '+email+'<h4>'
                    resultdiv += '<h4>gender: '+gender+'<h4>'
                    $('#result').append(resultdiv);

                },
                fail: function(error) {
                    alert(
                        'login success, but failed to request user information: ' +
                        JSON.stringify(error)
                    )
                },
            })
        },
        fail: function(err) {
            alert('failed to login: ' + JSON.stringify(err))
        },
    })
</script>
--%>

</body>
</html>

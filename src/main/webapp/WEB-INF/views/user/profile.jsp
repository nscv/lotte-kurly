<%@ page import="com.lotte.users.dto.KakaoDto" %><%--
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
    <!-- CSS only -->
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="/css/profile.css">
</head>
<body>
<jsp:include page="/front/header.jsp" flush="true"/>
<%
    int userno = -1;
    int isvalid = -1;
    Cookie[] cookies = request.getCookies() ;
    if(cookies != null){
        for(int i=0; i < cookies.length; i++){
            if (cookies[i].getName().equals("userno")) {
                userno = Integer.parseInt(cookies[i].getValue());
            } else if (cookies[i].getName().equals("isvalid")) {
                isvalid = Integer.parseInt(cookies[i].getValue());
            }
        }
    }
%>
<div class="box">
    <form action="add-profile" method="post" id="frm">
        <p class="subject">간단 회원가입</p>
        <p class="text-end"><span style="color: red;">*</span>필수 입력사항</p>
        <hr class="hr-solid">
        <div>
            <input type="hidden" id="userNo" name="userNo" value="2">
        </div>
        <div class="input-box">
            <p>닉네임<span style="color: red;">*</span></p>
            <input class="input-text" id="userNickname" name="userNickname" type="text" value="" placeholder="닉네임을 입력해 주세요" maxlength="50" required="required">
        </div>
        <div class="input-box">
            <p>생일<span style="color: red;">*</span></p>
            <input class="input-date" id="userBirth" name="userBirth" type="date" value="" maxlength="50" required="required">
        </div>
        <div class="input-box">
            <p>성별<span style="color: red;">*</span></p>
            <div class="input-radio">
                <input type="radio" id="0"
                       name="userGender" value="true" checked>
                <label for="0">남성</label>

                <input type="radio" id="1"
                       name="userGender" value="false">
                <label for="1">여성</label>
            </div>
        </div>
        <div class="input-box">
            <p>주소<span style="color: red;">*</span></p>
            <input class="input-text" id="userAddress" name="userAddress" type="text" value="" placeholder="주소를 입력해 주세요" maxlength="50" required="required">
        </div>
        <div class="input-box">
            <p>전화번호<span style="color: red;">*</span></p>
            <input class="input-text" id="userPhone" name="userPhone" type="text" value="" placeholder="전화번호를 입력해 주세요" maxlength="50" required="required">
        </div>
        <div class="div-button">
            <button class="input-button" type="submit">입력완료</button>
        </div>
    </form>
</div>


</body>
</html>

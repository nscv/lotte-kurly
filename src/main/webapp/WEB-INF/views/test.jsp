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
</head>
<body>
<jsp:include page="/front/header.jsp" flush="true"/>


<table>
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
    <tr>
        <td>
            <form action="add-profile" method="post" id="frm">
                <input type="hidden" id="userNo" name="userNo" value="2">
                <div class="signupLayout" id="signup" style="margin-top: 10%;">
                    <h2 class="titleSet titBig">
                        기본정보 입력
                    </h2>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Default</span>
                        </div>
                        <input id="userNickname" name="userNickname" type="text" value="" placeholder="닉네임을 입력해 주세요" class="form-control" aria-label="닉네임" aria-describedby="inputGroup-sizing-default" required="required">
                    </div>

                    <div>
                        <div>
                            <p>생일을 입력해 주세요</p>
                            <input id="userBirth" name="userBirth" type="date" value="" maxlength="50" required="required">
                        </div>
                    </div>
                    <div>
                        <p>성별을 입력해 주세요</p>
                        <div>
                            <input type="radio" id="0"
                                   name="userGender" value="true" checked>
                            <label for="0">남성</label>

                            <input type="radio" id="1"
                                   name="userGender" value="false">
                            <label for="1">여성</label>
                        </div>
                    </div>

                    <div>
                        <div>
                            <input id="userAddress" name="userAddress" type="text" value="" placeholder="주소를 입력해 주세요" maxlength="50" required="required">
                        </div>
                    </div>
                    <div>
                        <div>
                            <input id="userPhone" name="userPhone" type="text" value="" placeholder="전화번호를 입력해 주세요" maxlength="50" required="required">
                        </div>
                    </div>
                    <div>
                        <button type="submit">입력완료</button>
                    </div>
                </div>
            </form>
        </td>
    </tr>
</table>



</body>
</html>

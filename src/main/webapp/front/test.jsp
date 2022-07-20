<%--
  Created by IntelliJ IDEA.
  User: BTC-N28
  Date: 2022-07-19
  Time: 오후 7:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>

<div style="position:absolute; left:100px; margin:30px 0;">
<img id="no" src="https://img-cf.kurly.com/shop/data/goods/1658129878155l0.jpg" alt="no" onclick="imageDataToNav(this.id)">
<img id="no2" src="https://img-cf.kurly.com/shop/data/goods/1653037362151m0.jpg" alt="no1" onclick="imageDataToNav(this.id)">
<img id="no3" src="https://img-cf.kurly.com/shop/data/goods/1484296331485m0.jpg" alt="no1" onclick="imageDataToNav(this.id)">
<img id="no4" src="https://img-cf.kurly.com/shop/data/goods/1641869669935m0.jpg" alt="no1" onclick="imageDataToNav(this.id)">
<div style="">

</div>
<script>
//상품 클릭할 수 있는 곳에 전부 넣기
function imageDataToNav(id){
    var imgno = document.getElementById(id).alt
    var imgsrc = document.getElementById(id).src

    /* localStorage */
    var arr = localStorage.getItem('list');
    if( arr == null) { arr = [] } else { arr = JSON.parse(arr)};
    var str = imgno+'|'+imgsrc;

    arr.unshift(str);
    arr = new Set(arr);
    arr = [...arr];

    localStorage.setItem('list',JSON.stringify(arr));

    location.href = "test2.jsp"
}
</script>

<script>

</script>
</body>
</html>

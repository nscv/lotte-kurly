<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-20
  Time: 오후 5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="main.css">

</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<div class="slider">
    <div class="im"><img src="css/product-img.png" alt=""></div>
    <div class="im"><img src="css/product-img.png" alt=""></div>
    <div class="im"><img src="css/product-img.png" alt=""></div>
    <div class="im"><img src="css/product-img.png" alt=""></div>
    <div class="im"><img src="css/product-img.png" alt=""></div>
    <div class="im"><img src="css/product-img.png" alt=""></div>
</div>

<script>
    $( document ).ready( function() {
        $( '.slider' ).slick( {
            autoplay: true,
            autoplaySpeed: 1000,
            slidesToShow: 3,
            slidesToScroll: 1,
        } );
    } );
</script>

</body>
</html>

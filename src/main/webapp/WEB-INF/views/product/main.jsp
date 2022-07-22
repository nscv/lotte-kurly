<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-20
  Time: 오후 5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

    <title>Lotte Kurly</title>
    <%--<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>--%>

    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>

    <link rel="stylesheet" type="text/css" href="../../../css/main.css">

</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>

<div>
    <div class="SectionTitle css-2u0lrw e1py8bme2">
        <div class="css-7xc07p e6oc3j93">
            <span class="css-195c6n4 e1py8bme1">베스트 상품</span>
        </div>
        <p class="css-1efm9d2 e1py8bme0"></p>
    </div>
    <div class="slider">

        <c:forEach items="${list2}" var="m">
            <div class="item">
                <div class="thumb">
                    <img class="product-img" id="${m.productNo}" src="${m.productImgNewName}" onclick="imageDataToNav(this.id)">
                    <div class="group-btn">
                        <input type="hidden" class="pid" value="${m.productNo}">
                        <button type="button" class="btn cart-btn" onclick="bucksubmit()"></button>
                    </div>
                </div>
                <div class="info">
                    <span class="name">${m.productName}</span>
                    <span class="cost">
                                        <c:if test="${m.discountPrice==0}">
                                            <span class="price"><fmt:formatNumber value="${m.productPrice}" pattern="###,###"/> </span>
                                        </c:if>
                                        <c:if test="${m.discountPrice!=0}">
                                            <span style="text-decoration:line-through; color:#999999;"><fmt:formatNumber value="${m.productPrice}" pattern="###,###"/> </span> →<fmt:formatNumber value="${m.discountPrice}" pattern="###,###"/>
                                        </c:if>

                                </span>
                    <span class="simple-content">${m.productSimpleContent}</span>
                </div>
            </div>
        </c:forEach>



    </div>
</div>

<hr class="grey-hr">

<div>
    <div class="SectionTitle css-2u0lrw e1py8bme2">
        <div class="css-7xc07p e6oc3j93">
            <span class="css-195c6n4 e1py8bme1">할인 상품</span>
        </div>
        <p class="css-1efm9d2 e1py8bme0"></p>
    </div>
    <div class="slider">
        <c:forEach items="${list}" var="m">
            <div class="item">
                <div class="thumb">
                    <img class="product-img" id="${m.productNo}" src="${m.productImgNewName}" onclick="imageDataToNav(this.id)">
                    <div class="group-btn">
                        <input type="hidden" class="pid" value="${m.productNo}">
                        <button type="button" class="btn cart-btn" onclick="bucksubmit(this)"></button>
                    </div>
                </div>
                <div class="info">
                    <span class="name">${m.productName}</span>
                    <span class="cost">
                                     <span style="text-decoration:line-through; color:#999999;">${m.productPrice}</span> →${m.discountPrice}
                                </span>
                    <span class="simple-content">${m.productSimpleContent}</span>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="/front/footer.jsp"></jsp:include>

<script>
    $(document).ready(function () {
        $('.slider').slick({
            autoplay: true,
            autoplaySpeed: 2000,
            slidesToShow: 3,
            slidesToScroll: 1,
        });
    });
</script>

<script>
  function bucksubmit(button){
    $.ajax({
      type:"post",
      url:"/cart/items",
      data:{"productNo":button.id,"cartNo":userNo, //TODO
        "cartItemCount":1},
      dataType:"json",
      error:function(e){
        alert(e.responseText);
      },
      success:function(){
        alert("장바구니에 담겼습니다");
      }
    })
  }
</script>
</body>
</html>

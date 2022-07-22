<%--
  Created by IntelliJ IDEA.
  User: nayeon
  Date: 2022/07/21
  Time: 1:45 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lotte Kurly - 장바구니</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/cart.css">

</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>


<div class="wrap cf">
    <h1 class="projTitle">장바구니</h1>
    <div class="heading cf">
        <h3>전체선택</h3>
        <%--<a href="#" class="continue">Continue Shopping</a>--%>
    </div>
    <form action="/order/sheet">
        <div class="cart">

            <!--    <ul class="tableHead">
                  <li class="prodHeader">Product</li>
                  <li>Quantity</li>
                  <li>Total</li>
                   <li>Remove</li>
                </ul>-->
            <div class="cart-item-list">
                <ul class="cartWrap">

                </ul>
            </div>
            <div class="subtotal cf">
                <ul>
                    <li class="totalRow"><span class="label">Subtotal</span><span class="value">$35.00</span></li>

                    <li class="totalRow"><span class="label">Shipping</span><span class="value">$5.00</span></li>

                    <li class="totalRow"><span class="label">Tax</span><span class="value">$4.00</span></li>
                    <li class="totalRow final"><span class="label">전체가격</span><span class="value"><div
                            class="cart-items-total-price row">

            </div></span></li>
                    <li class="totalRow"><a href="#" class="btn continue">구매하기</a></li>
                </ul>
            </div>

        </div>
    </form>
</div>

<jsp:include page="/front/footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/cart.js"></script>
<script>

    function count(type)  {
    // 결과를 표시할 element
    let basicPrice = document.getElementById('basic-price');
    const resultElement = document.getElementById('result');
    const resultTotalPrice = document.getElementById('total-price');
    const reslutPoint = document.getElementById('result-point');
    let basicPriceFormatRemove = basicPrice.innerText.replaceAll(",","");

    // 현재 화면에 표시된 값
    let number = resultElement.innerText;

    // 더하기/빼기
    if(type === 'plus') {
    number = parseInt(number) + 1;
    }else if(type === 'minus')  {
    number = parseInt(number) - 1;
    }
    // 결과 출력
    if(number < 1){
    resultElement.innerText = "1";
    resultTotalPrice.innerText = basicPriceFormatRemove.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    reslutPoint.innerText = (parseInt(basicPriceFormatRemove) * 0.03).replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }else if(number > stock){
    resultElement.innerText = stock;
    resultTotalPrice.innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    reslutPoint.innerText = (parseInt(parseInt(basicPriceFormatRemove)*0.03) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }
    else{
    resultElement.innerText = number;
    resultTotalPrice.innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    reslutPoint.innerText = (parseInt(parseInt(basicPriceFormatRemove)*0.03) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }
    }
</script>
</body>
</html>

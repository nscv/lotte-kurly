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

            <div class="cart-item-list-div"></div>
            <li class="items odd">

                <div class="infoWrap">
                    <div class="cartSection">
                        <img src="http://lorempixel.com/output/technics-q-c-300-300-4.jpg" alt="" class="itemImg">
                        <p class="itemNumber">#QUE-007544-002</p>
                        <h3>Item Name 1</h3>

                        <p> <input type="text" class="qty" placeholder="3"> x $5.00</p>

                        <p class="stockStatus"> In Stock</p>
                    </div>


                    <div class="prodTotal cartSection">
                        <p>$15.00</p>
                    </div>
                    <div class="cartSection removeWrap">
                        <a href="#" class="remove">x</a>
                    </div>
                </div>
            </li>
        </ul>
        </div>
        <div class="subtotal cf">
            <ul>
                <li class="totalRow"><span class="label">Subtotal</span><span class="value">$35.00</span></li>

                <li class="totalRow"><span class="label">Shipping</span><span class="value">$5.00</span></li>

                <li class="totalRow"><span class="label">Tax</span><span class="value">$4.00</span></li>
                <li class="totalRow final"><span class="label">Total</span><span class="value"><div class="cart-items-total-price row">

            </div></span></li>
                <li class="totalRow"><a href="#" class="btn continue">Checkout</a></li>
            </ul>
        </div>

    </div></form>
</div>

<jsp:include page="/front/footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/cart.js"></script>

</body>
</html>

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
        <input type='checkbox'
               name='selectall'
               value='selectall'
               onclick='selectAll(this)'
               checked="checked"/>
        <p style="margin-left: 20px;">전체선택</p>
        <%--<a href="#" class="continue">Continue Shopping</a>--%>
    </div>
    <form action="/order/sheet" id="order-sheet-form">
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
                    <li class="totalRow final">
                        <span class="label">전체가격</span>
                        <span class="cart-items-total-price"></span>
                    </li>
                    <li class="totalRow">
                        <a href="javascript:{}" onclick="document.getElementById('order-sheet-form').submit();"
                           class="btn continue">구매하기</a>
                    </li>
                </ul>
            </div>

        </div>
    </form>
</div>

<jsp:include page="/front/footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/cart.js"></script>
<script>

    function count(type, id) {
        // 결과를 표시할 element
        let basicPrice = document.getElementsByName('basic-price');
        const resultElement = document.getElementsByName('result');
        const resultTotalPrice = document.getElementsByName('total-price');
        const totalPirce = document.getElementsByClassName('cart-items-total-price');
        let basicPriceFormatRemove = basicPrice[id].innerText.replaceAll(",", "");
        let totalPirceFormatRemove = totalPirce[0].innerText.replaceAll(",", "");
        const checked = document.querySelectorAll('input[name="orderCartItemNos"]')
        // 현재 화면에 표시된 값
        let number = resultElement[id].innerText;

        // 더하기/빼기
        if (type === 'plus') {
            number = parseInt(number) + 1;
            totalPirceFormatRemove = parseInt(totalPirceFormatRemove) + parseInt(basicPriceFormatRemove);
            if (checked[id].checked && number > 0) {
                totalPirce[0].innerText = totalPirceFormatRemove.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }
        } else if (type === 'minus') {
            number = parseInt(number) - 1;
            totalPirceFormatRemove = parseInt(totalPirceFormatRemove) - parseInt(basicPriceFormatRemove);
            if (checked[id].checked && number > 0) {
                totalPirce[0].innerText = totalPirceFormatRemove.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }
        }
        // 결과 출력
        if (number < 1) {
            resultElement[id].innerText = "1";
            resultTotalPrice[id].innerText = basicPriceFormatRemove.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        } else {
            resultElement[id].innerText = number;
            resultTotalPrice[id].innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }
    }

    function checkSelectAll(id) {
        let basicPrice = document.getElementsByName('basic-price');
        let basicPriceFormatRemove = basicPrice[id].innerText.replaceAll(",", "");
        const totalPirce = document.getElementsByClassName('cart-items-total-price');
        let totalPirceFormatRemove = totalPirce[0].innerText.replaceAll(",", "");
        const resultElement = document.getElementsByName('result');
        const checked = document.querySelectorAll('input[name="orderCartItemNos"]')
        let number = resultElement[id].innerText;
        console.log(checked)
        console.log(checked[id].checked)
        if (checked[id].checked) {
            totalPirce[0].innerText = (parseInt(totalPirceFormatRemove) + (parseInt(basicPriceFormatRemove) * parseInt(number))).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        } else {
            totalPirce[0].innerText = (parseInt(totalPirceFormatRemove) - (parseInt(basicPriceFormatRemove) * parseInt(number))).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        }

        // 전체 체크박스
        const checkboxes
            = document.querySelectorAll('input[name="orderCartItemNos"]');
        // select all 체크박스
        const selectAll
            = document.querySelector('input[name="selectall"]');

        if (checkboxes.length === checked.length) {
            selectAll.checked = true;
        } else {
            selectAll.checked = false;
        }

    }

    function selectAll(selectAll) {
        const totalPirce = document.getElementsByClassName('cart-items-total-price');
        const productTotal = document.getElementsByName('total-price');
        let total = 0;
        for(let i=0; i < productTotal.length; i ++ ){
            total = total + parseInt(productTotal[i].innerText.replaceAll(",", ""));

        }
        if(selectAll.checked){
            totalPirce[0].innerText = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }else{
            totalPirce[0].innerText = "0";
        }
        const checkboxes
            = document.getElementsByName('orderCartItemNos');

        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked
        })
    }
</script>
</body>
</html>

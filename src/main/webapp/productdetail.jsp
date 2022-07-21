<%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-19
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="productdetail.css">
</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<div id="content">
    <div class="section-view">
        <div class="inner-view">
            <div class="thumb" style="background-image: url(css/product-img.png);">
                <img src="css/product-img.png" alt="상품 대표 이미지" class="bg">
            </div>
            <p class="goods-name">
                <strong class="name">여기에 상품 이름 들어갑니다요</strong>
                <span class="simple-content">여기는 간단한 설명이 들어가지요</span>
            </p>
            <p class="goods-price">
                <span class="position">
                    <span class="price"><span id="basic-price">3,900</span>
                            <span class="won">원</span>
                        </span>
                </span>
            </p>
            <div class="goods-info">
                <dl class="list-fst">
                    <dt class="tit">상품 카테고리</dt>
                    <dd class="desc">간식</dd>
                </dl>
                <dl class="list">
                    <dt class="tit">상품 유통기한</dt>
                    <dd class="desc">수령일 포함 최대 146일 남은 제품을 보내드립니다</dd>
                </dl>
            </div>
            <div id="cartPut">
                <div class="cart-option cartList cart-type2">
                    <div class="inner-option">
                        <div class="in-option">
                            <div class="list-goods">
                                <ul class="list list-nopackage">
                                    <li class="on">
                                        <span class="btn-position">
                                            <button type="button" class="btn-del">
                                                <span class="txt">삭제하기</span>
                                            </button>
                                        </span>
                                        <span class="name">[윤솜씨] 전통 육포 이야기 (40g) </span>
                                        <span class="tit-item">구매수량</span>
                                        <div class="option">
                                            <span class="count">
                                                <button type="button" class="btn down on" onclick='count("minus")'
                                                        value='-'>수량내리기</button>
                                                <div id="result">1</div>
                                                <button type="button" class="btn up on" onclick='count("plus")'
                                                        value='+'>수량올리기</button>
                                            </span>
                                            <span class="price">
                                            <span class="dc-price">할인 금액 적는 칸입니다</span>
                                        </span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div id="holidayDeliveryInfo" class="holiday-delivery"></div> <!---->
                            <div class="total">
                                <div class="price"><!----> <strong class="tit">총 상품금액 :</strong>
                                    <span class="sum">
                                <span class="num" id="total-price">3,900</span>
                                <span class="won">원</span>
                            </span>
                                </div>
                                <p class="txt-point">
                                    <span class="ico">적립</span>
                                    <span class="point">구매 시
                                        <strong class="emph">0원 적립</strong>
                                    </span>
                                </p>
                            </div>
                        </div>
                        <div class="cart-footer off">
                            <div class="functions">
                            </div>
                            <div class="button-wrap">
                                <button type="button" class="base-button full">장바구니 담기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>

    <div class="tab">
        <button class="tablinks" onclick="openPage(event, 'Detail')">상품 상세 설명</button>
        <button class="tablinks" onclick="openPage(event, 'Review')">상품 후기</button>
    </div>

    <div id="Detail" class="tabcontent">
        <div class="goods_desc">
            <div class="context last">
                <div class="pic">
                    <img src="//img-cf.kurly.com/shop/data/goodsview/20220417/gv20000303336_1.jpg">
                </div>
                <p class="words"> </p>
            </div>
        </div>
    </div>

    <div id="Review" class="tabcontent">
        <h3>상품 후기</h3>
        <p>여기에는 리뷰가 들어갑니다</p>
    </div>
    <script>
        function count(type)  {
            // 결과를 표시할 element
            let basicPrice = document.getElementById('basic-price');
            const resultElement = document.getElementById('result');
            const resultTotalPrice = document.getElementById('total-price');

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
                resultTotalPrice.innerText = basicPrice.innerText;
            }else{
                resultElement.innerText = number;
                resultTotalPrice.innerText = (parseInt(basicPrice.innerText) * parseInt(number)) + "";
            }

        }

    </script>

    <script>
        function openPage(evt, pageName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(pageName).style.display = "block";
            evt.currentTarget.className += " active";
        }
    </script>


</div>
</body>
</html>

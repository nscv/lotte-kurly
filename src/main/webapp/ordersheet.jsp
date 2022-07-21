<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-21
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Sheet</title>
    <link rel="stylesheet" type="text/css" href="ordersheet.css">
</head>
<body>

<div class="tit-box">
    <h2 class="tit">주문서</h2>
</div>
<div id="content">
    <div id="order_form">
        <h2 class="tit-section fst">주문상품</h2>
        <div id="itemList" class="page order-goodslist on">
            <ul class="list-product">
                <li>
                    <div class="thumb">
                        <img src="https://img-cf.kurly.com/shop/data/goods/1592281897685i0.jpg" alt="상품이미지">
                    </div>
                    <div class="name">
                        <div class="inner-name">[아임닭] 닭가슴살 꾸이칩 시그니처 30g</div>
                    </div>
                    <div class="count-product">1개</div>
                    <div class="info-price">
                        <span class="num">
                            <span class="price">2,400원</span>
                        </span>
                    </div>
                </li>
                <li>
                    <div class="thumb"><img src="https://img-cf.kurly.com/shop/data/goods/1592281897685i0.jpg"
                                            alt="상품이미지">
                    </div>
                    <div class="name">
                        <div class="inner-name">[아임닭] 닭가슴살 꾸이칩 스파이시 30g</div>
                    </div>
                    <div class="count-product">1개</div>
                    <div class="info-price">
                        <span class="num">
                            <span class="price">12,400원</span>
                        </span>
                    </div>
                </li>
            </ul>
        </div>

        <h2 class="tit-section" id="tit-orderer-info">주문자 정보</h2>
        <div class="order-section data-orderer">
            <table class="goodsinfo-table">
                <tbody>
                <tr class="fst">
                    <th>보내는 분</th>
                    <td>
                        홍길동
                        <input type="hidden" name="orderer-name" value="홍길동">
                    </td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td>
                        01012345678
                        <input type="hidden" name="orderer-phone" value="01012345678">
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td>
                        <input type="hidden" id="email" name="orderer-email" value="gildon@lottekerly.com"
                               option="regEmail">
                        gildon@lottekerly.com
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <h2 class="tit-section" id="tit-address-info">배송 정보</h2>
        <div class="order-section data-address">
            <table class="addressinfo-table">
                <tbody>
                <tr class="fst">
                    <th>배송 주소</th>
                    <td>
                        서울특별시 서초구 서초동 어쩌구번지 비트컴퓨터 3층
                        <input type="hidden" name="address" value="서울특별시 서초구 서초동 어쩌구번지 비트컴퓨터 3층">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <h2 class="tit-section" id="tit-pay-info">결제 금액</h2>
        <div id="orderitem_money_info">
            <dl class="amount fst">
                <dt class="tit">주문 금액</dt>
                <dd class="price"><span id="productsTotalPrice">13,000</span> 원</dd>
            </dl>
            <dl class="amount sub">
                <dt class="tit">상품 금액</dt>
                <dd class="price"><span id="paper_goodsprice">13,000</span> 원</dd>
            </dl>
            <dl class="amount sub">
                <dt class="tit">상품 할인 금액</dt>
                <dd class="price sales_area">
                    <span class="pm_sign normal" style="display: none;">-</span>
                    <span id="special_discount_amount" class="normal">6,500</span>
                    원
                </dd>
            </dl>
            <dl class="amount">
                <dt class="tit">적립금 사용</dt>
                <dd class="price">
                    <span class="num pay_sum" id="paper_reserves">
                        <input type="text" class="point-input" value="" placeholder="0"> 원</span>
                </dd>
            </dl>
            <dl class="amount lst">
                <dt class="tit">최종 결제 금액</dt>
                <dd class="price">
                    <span id="paper_settlement">6,500</span>
                    <span class="won">원</span>
                </dd>
            </dl>
            <p class="reserve">
                <span class="ico">적립</span> 구매 시 <span class="emph"><span id="expectAmount">19</span> 원 (<span class="ratio">0.3</span>%) 적립</span>
            </p>
        </div>


<%--        <h2 class="tit-section" id="tit-pay-info">결제 금액</h2>
        <div class="pay-section">
            <table class="payinfo-table">
                <tbody>
                <tr class="fst">
                    <th>주문금액</th>
                    <td>13,000원</td>
                </tr>
                <tr>
                    <th class="paydetailinfo">┖ 상품 금액</th>
                    <td>13,000원</td>
                </tr>
                <tr>
                    <th class="paydetailinfo">┖ 상품 할인 금액</th>
                    <td>6,500원</td>
                </tr>
                <hr>
                <tr>
                    <th>적립금 사용</th>
                    <td><input type="text" class="point-input" value="" placeholder="사용할 적립금을 입력해주세요"></td>
                </tr>
                <hr>
                <tr>
                    <th>최종 결제 금액</th>
                    <td>6,500원</td>
                </tr>

                <p class="reserve">
                    <span class="ico">적립</span>구매 시
                    <span class="emph">
                        <span id="expectAmount">19</span>
                        원 (<span class="ratio">0.3</span>%) 적립</span>
                </p>

                </tbody>
            </table>
        </div>--%>

    </div>

</div>
</body>
</html>

<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.stream.Collectors" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-21
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    List<Integer> orderCartItemNos = null;
    try {
        String[] orderCartItemNosStrArr = request.getParameterValues("orderCartItemNos");
        orderCartItemNos = Arrays.stream(orderCartItemNosStrArr)
                .map(Integer::parseInt)
                .collect(Collectors.toList());
    } catch (NullPointerException e) {
%>
<script type="text/javascript">
    alert('주문하실 상품을 선택해주세요.');
    history.back();
</script>
<%
    }
%>
<script type="text/javascript">
    var orderCartItemNos = <%=orderCartItemNos%>;
    var userNo = 1; // FIXME 사용자 번호
</script>
<html>
<head>
    <title>Lotte Kurly - 주문서</title>

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <!-- Ajax -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="/css/ordersheet.css">
</head>
<body>
<jsp:include page="/front/header.jsp"></jsp:include>
<jsp:include page="/front/nav.jsp"></jsp:include>
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
                    <td class="order-user-name-td">
                        홍길동
                        <%--                        <input type="hidden" name="orderer-name" value="홍길동">--%>
                    </td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td class="order-user-phone-td">
                        01012345678
                        <%--                        <input type="hidden" name="orderer-phone" value="01012345678">--%>
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td class="order-user-email-td">
                        <%--                        <input type="hidden" id="email" name="orderer-email" value="gildon@lottekerly.com"--%>
                        <%--                               option="regEmail">--%>
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
                    <td class="delivery-address-td">
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
            <!--<dl class="amount">
                <dt class="tit">적립금 사용</dt>
                <dd class="price">
                    <span class="num pay_sum" id="paper_reserves">
                        <input onchange="usePoint(this)" type="text" class="point-input" value="" placeholder="0"> 원</span>
                </dd>
            </dl>-->
            <dl class="amount lst">
                <dt class="tit">최종 결제 금액</dt>
                <dd class="price">
                    <span id="paper_settlement">6,500</span>
                    <span class="won">원</span>
                </dd>
            </dl>
            <p class="reserve">
                <span class="ico">적립</span> 구매 시 <span class="emph"><span id="expectAmount">19</span> 원 (<span
                    class="ratio">3</span>%) 적립</span>
            </p>
        </div>

        <input type="submit" class="confirm-pay" value="결제하기" onclick="getUserAccountInfo()">
        <!-- TODO userNo -->

    </div>

</div>

<!-- 결제하기 모달 -->
<div id="payment-modal" class="modal" tabindex="-1" role="dialog" style="display: none">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">결제 정보</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                        onclick="hideModal()">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="modal-table">
                    <tbody>
                    <tr class="fst">
                        <div>
                            <th>계좌 잔액</th>
                            <td><span id="account-money-span">9999</span></td>
                        </div>
                    </tr>
                    <tr>
                        <div>
                            <th>결제 금액</th>
                            <td><span id="order-total-price-span">9999</span></td>
                        </div>
                    </tr>
                    <tr>
                        <div>
                            <th>결제 후 잔액</th>
                            <td><span id="price-after-order-span">9999</span></td>
                        </div>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button id="pay-btn" type="button" class="btn btn-primary" onclick="pay()">결제하기</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="hideModal()">취소</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/front/footer.jsp"></jsp:include>

<script>
    function usePoint(obj) {
        let computedtotal = parseInt($('#paper_goodsprice').text().replaceAll(",","")) + parseInt($('#special_discount_amount').text().replaceAll(",","")) - parseInt(obj.value)
        $('#paper_settlement').text(makePriceFormat(computedtotal));
    }
    function makePriceFormat(price) {
        return (parseInt(price) + "").replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

</script>
<script type="text/javascript" src="/js/ordersheet.js"></script>
</body>
</html>

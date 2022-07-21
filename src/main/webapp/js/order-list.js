


function getOrders() {

  // 사용자 아이디
  let cartNo = $('');
  
  $.ajax({
    url: `/orders?userNo=${userNo}`,
    type: "GET",
    success: function (response) {
      console.log(response);
      
      makeOrderDivs(response.orders);
    },
    error: function (err) {
      alert("[order] order-list.js getOrders(): fail.");
    }
  })
}

function makeOrderDivs(orders) {
  let orderListDiv = $('.order-list-div');
  let html = "";
  
  orders.forEach(function (order) {
      html += `<!-- 주문 리스트 -->
                <div class="order-div">
                    <!-- 주문 시간 -->
                    <div>
                        ${order.orderCreatedAt}
                    </div>
                    <!-- 주문 정보 -->
                    <!-- 주문 시간 및 상세보기 페이지 버튼 -->
                    <div class="row">
                        <div class="col-10">${getOrderTitleName(order.productNames)}</div>
                        <div class="col-2">
                            <button onclick="location.href='/order/detail'">주문 상세</button>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <!-- 상품 이미지 -->
                        <div class="col-2">
                          
                        </div>
                        <!-- 주문 정보 -->
                        <div class="col-8">
                            <div>주문 번호 &nbsp;&nbsp; ${order.orderNo}</div>
                            <div>결제 금액 &nbsp;&nbsp; ${order.orderTotalPrice}</div>
                            <div>주문 상태 &nbsp;&nbsp; ${order.orderState}</div>
                        </div>
                        <!-- 주문 취소 버튼 -->
                        <div class="col-2">
                            <button>주문 취소</button>
                        </div>
                    </div>
                </div>`;
  })
}

/* 000상품 외 X건 */
function getOrderTitleName(productNames) {
  return `${productNames[0]} 외 ${productNames.length - 1}건`;
}
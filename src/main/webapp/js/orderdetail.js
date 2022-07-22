getOrders();


function getOrders() {

    $.ajax({
        url: `/orders?userNo=${userNo}`,
        type: "GET",
        success: function (response) {
            console.log(response);

            makeOrderDivs(response.orders);
        },
        error: function (err) {
            alert("[order] orderlist.js getOrders(): fail.");
        }
    })
}

function makeOrderDivs(orders) {
    let orderListDiv = $('.order-list-div');
    orderListDiv.empty();

    let html = "";
    orders.forEach(function (order) {
        html += `<li class="items odd">
                &nbsp;&nbsp;${order.orderCreatedAt}
                <div class="order-list-box">
                <div style="display: flex; align-items: center;">
                <h3 class="order-list-title">${order.cartItemProductName}&nbsp;&nbsp;외 ${order.cartItemsCount}&nbsp;&nbsp;종</h3>
                <a href="javascript:{}" onclick="location.href='/order/detail?orderNo=${order.orderNo}'" class="btn continue"style="height: 30px;padding: 5px;padding-right: 10px;width: 100px;color: #fff; background: #777DF2;border-radius: 50px;text-align: end;">상세보기</a>
<!--                <button onclick="location.href='/order/detail?orderNo=${order.orderNo}'">주문 상세</button>-->
</div>
                
                <br>
              <div class="infoWrap">
                  <div class="cartSection" style="display: flex;">
                      <img src="${order.cartItemProductImgNewName}" alt="" style="margin-left: 20px;" class="itemImg">
                      <div class="cart-product-name">
                            <div class="prodTotal cartSection" style="display:grid;">
                                <p style="margin: 3px 0; text-align: left;">주문번호:&nbsp;&nbsp;${order.orderNo}</p>
                                <p style="margin: 3px 0; text-align: left;">결제금액:&nbsp;&nbsp;${order.orderTotalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')}원</p>
                                <p style="margin: 3px 0; text-align: left;">주문상태:&nbsp;&nbsp;결제완료</p>
                            </div>
                      </div>
                  </div>
              </div>
              </div>
              </li>`;
    });

    orderListDiv.append(html);
}

/* 000상품 외 X건 */
function getOrderTitleName(productName, cartItemsCount) {
    if (cartItemsCount == 0) {
        return `${productName}`;
    }
    return `${productName} 외 ${cartItemsCount}건`;
}
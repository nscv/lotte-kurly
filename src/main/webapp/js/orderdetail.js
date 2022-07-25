
getOrderDetail();

function getOrderDetail() {
  $.ajax({
    url: `/orders/${orderNo}`,
    type: "GET",
    success: function (response) {
      console.log(response);
      getOrderDetailDivs(response.orderCartItems, response.orderCreatedAt);
    },
    error: function (err) {
      console.log(err);

    }
  });
}

function getOrderDetailDivs(orders, orderday) {
  let orderListDiv = $('.order-list-div');
  orderListDiv.empty();

  let html = "";
  orders.forEach(function (order) {
    html += `<li class="items odd">
                <div class="order-list-box" style="border: none;border-bottom: 1px solid #dadada">
              <div class="infoWrap">
                  <div class="cartSection" style="display: flex;">
                      <img src="${order.productImgNewName}" alt="" style="margin-left: 20px;" class="itemImg">
                      <div class="cart-product-name">
                            <div class="prodTotal cartSection" style="display:grid;">
                                <p style="margin: 20px 0; text-align: left;">${order.productName}</p>
                                <div style="display: flex">
                                <p style="margin: 0; text-align: left;">${(parseInt(order.cartItemDiscountPrice)/parseInt(order.cartItemCount)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')}원 |  ${order.cartItemCount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')}개</p>
                                </div>
                            </div>
                      </div>
                  </div>
              </div>
              </div>
              </li>`;
  });

  orderListDiv.append(html);
}
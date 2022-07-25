var orderTotalPrice = 0;

getOrderSheet();


function getOrderSheet() {
  let form = new FormData();
  form.append("orderCartItemNos", orderCartItemNos);
  form.append("userNo", userNo);

  let data = {
    orderCartItemNos: orderCartItemNos,
    userNo: userNo
  }

  $.ajax({
    url: `/orders/sheet`,
    type: "GET",
    data: data,
    success: function (response) {
      console.log(response);

      printCartItems(response.orderCartItems);
      printUserInfo(response.orderUserDetail);
      printDeliveryInfo(response.orderUserDetail.userAddress);
      printPaymentInfo(response.orderCartItems, response.orderTotalPrice);
    },
    error: function (err) {
      console.log(err);
    }
  });
}

function printCartItems(cartItems) {
  let listProductDiv = $('.list-product');
  listProductDiv.empty();

  let html = "";
  cartItems.forEach(function (cartItem) {
    console.log(cartItem.productImgNewName);
    html += `<li>
                    <div class="thumb">
                        <a href="/product/productdetail?productNo=${cartItem.productNo}">
                            <img src=${cartItem.productImgNewName} alt="상품이미지">
                        </a>
                    </div>
                    <div class="name">
                        <div class="inner-name">${cartItem.productName}</div>
                    </div>
                    <div class="count-product">${cartItem.cartItemCount} 개</div>
                    <div class="info-price">
                         <!-- <span class="num">
                             <span class="price">${makePriceFormat(cartItem.cartItemTotalPrice)}</span>
                        </span> -->
                        <!-- 할인 가격 적용 -->
                        <span class="num">
                            <span class="price">${makePriceFormat(cartItem.cartItemDiscountPrice)} 원</span>
                        </span> 
                    </div>
                </li>`;
  });

  listProductDiv.append(html);
}

function printUserInfo(userDetail) {
  let orderUserNameTd = $('.order-user-name-td');
  orderUserNameTd.text(userDetail.userNickname);

  let orderUserPhoneTd = $('.order-user-phone-td');
  orderUserPhoneTd.text(userDetail.userPhone);

  let orderUserEmailTd = $('.order-user-email-td');
  orderUserEmailTd.text(userDetail.userEmail);

}

function printDeliveryInfo(address) {
  let deliveryAddressTd = $('.delivery-address-td');
  deliveryAddressTd.text(address);
}

function printPaymentInfo(cartItems, total) {
  $('#productsTotalPrice').text(makePriceFormat(getOrderPrice(cartItems)));
  $('#expectAmount').text(makePriceFormat(getOrderPrice(cartItems) * 0.03));
  $('#paper_goodsprice').text(makePriceFormat(getProductPrice(cartItems)));
  $('#special_discount_amount').text(makePriceFormat(getTotalDiscountPrice(cartItems)));
  $('#paper_settlement').text(makePriceFormat(total));
}

function makePriceFormat(price) {
    return (parseInt(price) + "").replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}



// 할인금액 적용된 가격
function getOrderPrice(cartItems) {
  orderTotalPrice = 0;
  cartItems.forEach(function (cartItem) {
    let cartItemTotalPrice = parseInt(cartItem.cartItemTotalPrice);
    let cartItemDiscountPrice = parseInt(cartItem.cartItemDiscountPrice);

    if (cartItemTotalPrice == cartItemDiscountPrice) {
      orderTotalPrice += cartItemTotalPrice;
    }
    else {
      orderTotalPrice += cartItemDiscountPrice;
    }
  });
  return orderTotalPrice;
}

function getProductPrice(cartItems) {
  let totalProductPrice = 0;
  cartItems.forEach(function (cartItem) {
    totalProductPrice += parseInt(cartItem.cartItemTotalPrice);
  });
  return totalProductPrice;
}

// 할인된 가격 (50% 삭감된 가격 더하기)
function getTotalDiscountPrice(cartItems) {
  let discountTotal = 0;
  cartItems.forEach(function (cartItem) {
    let cartItemTotalPrice = parseInt(cartItem.cartItemTotalPrice);
    let cartItemDiscountPrice = parseInt(cartItem.cartItemDiscountPrice);

    if (cartItemTotalPrice != cartItemDiscountPrice) {
      discountTotal += cartItemDiscountPrice;
    }
  });
  return discountTotal;
}

function getTotalPaymentPrice() {
  //TODO totalOrderPrice - point ()
}

function getUserAccountInfo() {

  $.ajax({
    url: `/account/1`,
    type: "GET",
    success: function (response) {
      console.log(response);

      showPayModal(response.accountMoney);
    },
    error: function (err) {
      console.log(err);
    }
  });
}

function showPayModal(account) {
  let payBtn = $('#pay-btn');

  showModal();

  <!-- 모달 초기 세팅 -->
  payBtn.attr('disabled', false);
  payBtn.text("결제하기");
  payBtn.removeClass("btn-danger");
  payBtn.addClass("btn-secondary");

  $('#account-money-span').text(makePriceFormat(account));
  $('#order-total-price-span').text($('#paper_settlement').text());

  let payPrice = getPayPrice(account, orderTotalPrice);
  $('#price-after-order-span').text(makePriceFormat(payPrice));

  if(payPrice < 0) {
    payBtn.text("잔액 부족");
    payBtn.removeClass("btn-secondary");
    payBtn.addClass("btn-danger");
    payBtn.attr('disabled', true);
  }
}

function showModal() {
  $('#payment-modal').show();
}

function hideModal() {
  $('#payment-modal').hide();
}

function getPayPrice(account, totalPrice) {
  return account - totalPrice;
}

function pay() {
  console.log('pay btn click');

  let data = {
    orderTotalPrice: parseInt($('#paper_settlement').text().replaceAll(",","")),
    userNo: userNo // TODO userNo
  };

  $.ajax({
    url: "/account/pay",
    type: "PUT",
    contentType: "application/json",
    data: JSON.stringify(data),
    success: function (response) {
      console.log(response);

      if (true) {
        order(); // 결제가 완료되면 주문 진행
      }
      else {
        alert("결제를 실패했습니다. 다시 시도해주세요.");
        // TODO refund
        hideModal();
      }

    },
    error: function (err) {
      alert("error");
      console.log(err);
    }
  })
}

function order() {
  let data = {
    orderCartItemNos: orderCartItemNos,
    userNo: userNo, // FIXME userNo,
    orderAddress: $('.delivery-address-td').text(),
    orderTotalPrice: orderTotalPrice
  };

  $.ajax({
    url: `/orders`,
    type: "POST",
    data: data,
    success: function (response) {
      console.log(response);

      if (!response) {
        // TODO refund
      }
      else {
        location.href="/order/list";
      }
    },
    error: function (err) {
      console.log(err);
    }
  })
}
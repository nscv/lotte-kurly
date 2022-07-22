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
      printPaymentInfo(response.orderCartItems);
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
    html += `<li>
                    <div class="thumb">
                        <a href="/product/productdetail?productNo=${cartItem.productNo}">
                            <img src="${cartItem.productNewImgName}" alt="상품이미지">
                        </a>
                    </div>
                    <div class="name">
                        <div class="inner-name">${cartItem.productName}</div>
                    </div>
                    <div class="count-product">${cartItem.cartItemCount} 개</div>
                    <div class="info-price">
                        <span class="num">
                            <span class="price">${makePriceFormat(cartItem.cartItemTotalPrice)}</span>
                        </span>
                        <!-- FIXME 할인 가격  -->
                        <!-- <span class="num">
                            <span class="price">${makePriceFormat(cartItem.cartItemDiscountPrice)}</span>
                        </span> -->
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

function printPaymentInfo(cartItems) {
  $('#productsTotalPrice').text(makePriceFormat(getOrderPrice(cartItems)));
  $('#paper_goodsprice').text(makePriceFormat(getProductPrice(cartItems)));
  $('#special_discount_amount').text(makePriceFormat(getTotalDiscountPrice(cartItems)));
}

function makePriceFormat(price) {
    return (price + "").replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}



// 할인금액 적용된 가격
function getOrderPrice(cartItems) {
  let totalOrderPrice = 0;
  cartItems.forEach(function (cartItem) {
    let cartItemTotalPrice = parseInt(cartItem.cartItemTotalPrice);
    let cartItemDiscountPrice = parseInt(cartItem.cartItemDiscountPrice);

    if (cartItemTotalPrice == cartItemDiscountPrice) {
      totalOrderPrice += cartItemTotalPrice;
    }
    else {
      totalOrderPrice += cartItemDiscountPrice;
    }
  });
  return totalOrderPrice;
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

}

function pay() {

  $.ajax({
    url: `/pay/1`,
    type: "GET",
    success: function (response) {
      console.log(response);
    },
    error: function (err) {
      console.log(err);
    }
  });
}
// FIXME - default 장바구니 아이템 모두 선택되게

getCart();


function getCart() {

  // 장바구니 아이콘으로 부터 가져온 장바구니 아이디
  let cartNo = $('');

  $.ajax({
    url: `/carts/${1}`,
    type: "GET",
    success: function (response) {
      console.log(response);

      let cartItemContainer = $('.cart-item-list-div');
      let cartItemsTotalPriceDiv = $('.cart-items-total-price');

      cartItemContainer.empty();

      let html = "";
      response.cartItems.forEach(function (cartItem, idx) {
        html += `<div class="row cart-item-div">
                        <div class="col-1 ">
                            <input type="checkbox" name="cart-item-checkbox">
                        </div>
                        <div class="col-2">
                            <a href="/product/productdetail?productNo=${cartItem.productNo}">
                              <img src="${cartItem.productImgNewName}" alt="상품 이미지" width="50"/>
                            </a>
                        </div>
                        <div class="col-5">
                            <a href="/product/productdetail?productNo=${cartItem.productNo}">
                                <span>${cartItem.productName}</span>
                            </a>
                        </div>
                        <div class="col-1">
                            <input type="text" value="${cartItem.cartItemCount}" style="width: 50px">
                        </div>
                        <div class="col-1">
                            <button style="width: 50px; height: 25px">수정</button>
                        </div>
                        <div class="col-2">
                            ${getCartItemPrice(cartItem)}
                        </div>
                    </div>`;
      });

      cartItemContainer.append(html);

      cartItemsTotalPriceDiv.empty();
      cartItemsTotalPriceDiv.append(getCartItemsTotalPrice(response.cartItems));
    },
    error: function(err) {
      alert(err);
      console.log(err);
    }
  });

  function getCartItemPrice(cartItem) {
    let originPrice = parseInt(cartItem.cartItemTotalPrice);
    let discountPrice = parseInt(cartItem.cartItemDiscountPrice);

    // 유통기한이 2주 이상 남은 제품의 경우
    if (originPrice == discountPrice) {
      return originPrice;
    }

    return discountPrice;
  }

  function getCartItemsTotalPrice(cartItems) {
    let cartItemsTotalPrice = 0;

    cartItems.forEach(function (cartItem, idx) {
      cartItemsTotalPrice += getCartItemPrice(cartItem);
    })

    return cartItemsTotalPrice;
  }

  function getOrderSheet() {

  }
}
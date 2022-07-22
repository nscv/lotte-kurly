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

      let cartItemContainer = $('.cartWrap');
      let cartItemsTotalPriceDiv = $('.cart-items-total-price');

      cartItemContainer.empty();

      let html = "";
      response.cartItems.forEach(function (cartItem, idx) {
        html += `<li class="items odd">
                <div class="infoWrap">
                    <div>
                        <input type="checkbox" name="orderCartItemNos" value="${cartItem.cartItemNo}">
                    </div>
                    <div class="cartSection" style="display: flex;">
                        <img src="${cartItem.productImgNewName}" alt="" class="itemImg">
                        <div cl><h3>${cartItem.productName}</h3></div>
                        

                        <div class="option">
                                                <span class="count">
                                                    <button type="button" class="btn down on" onclick='count("minus")'
                                                            value='-'>수량내리기</button>
                                                    <div id="result">1</div>
                                                    <button type="button" class="btn up on" onclick='count("plus")'
                                                            value='+'>수량올리기</button>
                                                </span>
                                            </div>
                    </div>


                    <div class="prodTotal cartSection">
                        <p>$15.00</p>
                    </div>
                    <div class="cartSection removeWrap">
                        <a href="#" class="remove">x</a>
                    </div>
                </div>
            </li><li class="items odd">
                <div class="infoWrap">
                    <div>
                        <input type="checkbox" name="orderCartItemNos" value="${cartItem.cartItemNo}">
                    </div>
                    <div class="cartSection" style="display: flex;">
                        <img src="${cartItem.productImgNewName}" alt="" class="itemImg">
                        <h3>${cartItem.productName}</h3>

                        <p> <input type="text" class="qty" value="${cartItem.cartItemCount}"> x ${getCartItemPrice(cartItem)}</p>
                    </div>


                    <div class="prodTotal cartSection">
                        <p>$15.00</p>
                    </div>
                    <div class="cartSection removeWrap">
                        <a href="#" class="remove">x</a>
                    </div>
                </div>
            </li>`;
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

    function count(type)  {
        // 결과를 표시할 element
        let basicPrice = document.getElementById('basic-price');
        const resultElement = document.getElementById('result');
        const resultTotalPrice = document.getElementById('total-price');
        const reslutPoint = document.getElementById('result-point');
        let basicPriceFormatRemove = basicPrice.innerText.replaceAll(",","");

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
            resultTotalPrice.innerText = basicPriceFormatRemove.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            reslutPoint.innerText = (parseInt(basicPriceFormatRemove) * 0.03).replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }else if(number > stock){
            resultElement.innerText = stock;
            resultTotalPrice.innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            reslutPoint.innerText = (parseInt(parseInt(basicPriceFormatRemove)*0.03) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }
        else{
            resultElement.innerText = number;
            resultTotalPrice.innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            reslutPoint.innerText = (parseInt(parseInt(basicPriceFormatRemove)*0.03) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }
    }
}
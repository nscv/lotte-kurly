// FIXME - default 장바구니 아이템 모두 선택되게

getCart();


function getCart() {

    // 장바구니 아이콘으로 부터 가져온 장바구니 아이디
    let cartNo = $('');

    $.ajax({
        url: `/carts/${userNo}`,
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
                        <input id="${idx}" type="checkbox" name="orderCartItemNos" value="${cartItem.cartItemNo}" onclick="checkSelectAll(this.id)" checked="checked">
                    </div>
                    <div class="cartSection" style="display: flex;">
                        <img src="${cartItem.productImgNewName}" alt="" style="margin-left: 20px;" class="itemImg">
                        <div class="cart-product-name"><h3>${cartItem.productName}</h3>
                        <div style="display: flex">
                        <div class="option">
                            <span class="count">
                                <button id=${idx} type="button" class="btn down on" onclick='count("minus",this.id)' value='-'>수량내리기</button>
                                <div id="result" name="result">${cartItem.cartItemCount}</div>
                                <button id=${idx} type="button" class="btn up on" onclick='count("plus",this.id)' value='+'>수량올리기</button>
                            </span>
                        </div>
                        <p style="margin: auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;X&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <div class="prodTotal cartSection">
                        <p id="basic-price" name="basic-price">${cartItem.productPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')}</p>
                    </div>
                    
                    <div class="prodTotal cartSection">
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 계&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p id="total-price" name="total-price"> ${(cartItem.cartItemCount * cartItem.productPrice).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')}</p><p>원</p>
                    </div>
                        
</div>
                        
                        </div>
                        

                        
                    </div>
                    
<!--                    <div class="cartSection removeWrap">-->
<!--                        <a href="#" class="remove">x</a>-->
<!--                    </div>-->
                </div>
            </li>`;
            });

            cartItemContainer.append(html);

            cartItemsTotalPriceDiv.empty();
            cartItemsTotalPriceDiv.append(getCartItemsTotalPrice(response.cartItems));
        },
        error: function (err) {
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

        return cartItemsTotalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }

    function getOrderSheet() {

    }

    function count(type) {
        // 결과를 표시할 element
        let basicPrice = document.getElementById('basic-price');
        const resultElement = document.getElementById('result');
        const resultTotalPrice = document.getElementById('total-price');
        const reslutPoint = document.getElementById('result-point');
        let basicPriceFormatRemove = basicPrice.innerText.replaceAll(",", "");

        // 현재 화면에 표시된 값
        let number = resultElement.innerText;

        // 더하기/빼기
        if (type === 'plus') {
            number = parseInt(number) + 1;
        } else if (type === 'minus') {
            number = parseInt(number) - 1;
        }
        // 결과 출력
        if (number < 1) {
            resultElement.innerText = "1";
            resultTotalPrice.innerText = basicPriceFormatRemove.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            reslutPoint.innerText = (parseInt(basicPriceFormatRemove) * 0.03).replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        } else if (number > stock) {
            resultElement.innerText = stock;
            resultTotalPrice.innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            reslutPoint.innerText = (parseInt(parseInt(basicPriceFormatRemove) * 0.03) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        } else {
            resultElement.innerText = number;
            resultTotalPrice.innerText = (parseInt(basicPriceFormatRemove) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            reslutPoint.innerText = (parseInt(parseInt(basicPriceFormatRemove) * 0.03) * parseInt(number)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }
    }
}
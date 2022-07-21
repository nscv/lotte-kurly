<%@ page import="com.lotte.products.dto.ProductCategoryDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-19
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/productdetail.css">
    <% List<ProductCategoryDto> dto = (List<ProductCategoryDto>)request.getAttribute("list"); %>
</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>
<div id="container">
    <div id="content">
    <jsp:include page="/front/nav.jsp"></jsp:include>
        <div class="section-view">
            <div class="inner-view">
                <div class="thumb" style="background-image: url(../../../css/product-img.png);">
                    <img src="/css/product-img.png" alt="상품 대표 이미지" class="bg">
                </div>
                <p class="goods-name">
                    <strong class="name">여기에 상품 이름 들어갑니다요</strong>
                    <span class="simple-content">여기는 간단한 설명이 들어가지요</span>
                </p>
                <p class="goods-price">
                    <span class="position">
                        <span class="price"><span id="basic-price">3,900</span>
                                <span class="won">원</span>
                            </span>
                    </span>
                </p>
                <div class="goods-info">
                    <dl class="list-fst">
                        <dt class="tit">상품 카테고리</dt>
                        <dd class="desc">간식</dd>
                    </dl>
                    <dl class="list">
                        <dt class="tit">상품 유통기한</dt>
                        <dd class="desc">수령일 포함 최대 146일 남은 제품을 보내드립니다</dd>
                    </dl>
                </div>
                <div id="cartPut">
                    <div class="cart-option cartList cart-type2">
                        <div class="inner-option">
                            <div class="in-option">
                                <div class="list-goods">
                                    <ul class="list list-nopackage">
                                        <li class="on">
                                            <span class="btn-position">
                                                <button type="button" class="btn-del">
                                                    <span class="txt">삭제하기</span>
                                                </button>
                                            </span>
                                            <span class="name">[윤솜씨] 전통 육포 이야기 (40g) </span>
                                            <span class="tit-item">구매수량</span>
                                            <div class="option">
                                                <span class="count">
                                                    <button type="button" class="btn down on" onclick='count("minus")'
                                                            value='-'>수량내리기</button>
                                                    <div id="result">1</div>
                                                    <button type="button" class="btn up on" onclick='count("plus")'
                                                            value='+'>수량올리기</button>
                                                </span>
                                                <span class="price">
                                                <span class="dc-price">할인 금액 적는 칸입니다</span>
                                            </span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="holidayDeliveryInfo" class="holiday-delivery"></div> <!---->
                                <div class="total">
                                    <div class="price"><!----> <strong class="tit">총 상품금액 :</strong>
                                        <span class="sum">
                                    <span class="num" id="total-price">3,900</span>
                                    <span class="won">원</span>
                                </span>
                                    </div>
                                    <p class="txt-point">
                                        <span class="ico">적립</span>
                                        <span class="point">구매 시
                                            <strong class="emph">0원 적립</strong>
                                        </span>
                                    </p>
                                </div>
                            </div>
                            <div class="cart-footer off">
                                <div class="functions">
                                </div>
                                <div class="button-wrap">
                                    <button type="button" class="base-button full">장바구니 담기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>

        <div class="tab">
            <button class="tablinks" onclick="openPage(event, 'Detail')">상품 상세 설명</button>
            <button class="tablinks" onclick="openPage(event, 'Review')">상품 후기</button>
        </div>

        <div id="Detail" class="tabcontent">
            <div class="goods_wrap">
                <div class="goods_intro">
                    <div class="pic">
                        <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv00000020508_1.jpg">
                    </div>
                    <div class="context last">
                        <h3> <small>송로버섯의 깊은 풍미</small> [라 파브리카] 트러플 파스타 </h3>
                        <p class="words">'스파게티=파스타' 였던 때가 있었습니다. 하지만 지금은 누구나 '스파게티란 수백 가지의 파스타 면 종류 중 하나일 뿐'이라는 사실을 알죠. 우리에게 파스타는 밥만큼이나 익숙하고 만만한 음식이 됐습니다. 물에 넣고 끓여서 소스와 함께 버무리면 끝이니 이렇게 간단한 요리가 또 있을까요? 하지만 파스타 면을 삶을 때마다, 푸드마켓에서 신기한 파스타가 진열되는 모습을 보면서 아이러니하게도 궁금증은 더욱 커지기만 했습니다. 지금 내가 물에 넣고 있는 이 밀가루 덩어리는 어디서 왔을까? 파스타에도 등급이 있을까? 파스타 브랜드는 왜 이렇게 많은 거야!' <br> <br> '아는 만큼 맛있다'라는 생각으로 컬리는 파스타에 대해 공부했습니다. 시중의 거의 모든 브랜드와 파스타 종류를 섭렵한 결과는 의외로 심플했죠. 이탈리아 현지의 듀럼밀을 사용할 것, 되도록이면 전통 방식으로 뽑아낼 것, 그리고 저온에서 천천히 건조할 것. 그리고 이 세 가지를 갖춘 브랜드 중에서도 진짜 맛있는 파스타 브랜드를 다시 한번 골랐습니다. 컬리가 고른 브랜드는 바로 '라 파브리카'로 15세기부터 파스타로 유명했던 이탈리아 그라냐노 지역의 명물 파스타 브랜드입니다. '라 파브리카'라면 그들의 트러플 파스타를 빼놓고 파스타를 논할 수 없는데요. 131년의 전통을 이어온 파스타 회사의 프리미엄 트러플 파스타를 컬리에서 만나보세요.</p>
                    </div>
                </div>
                <div class="goods_point">
                    <h3><span>Kurly's Check Point</span></h3>
                    <div class="context last">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20190318/gv20000044943_1.jpg">
                        </div>
                    </div>
                </div>
                <div class="goods_desc">
                    <div class="context">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv20000020510_1.jpg">
                        </div>
                        <p class="words"> <strong class="sub_tit">트러플 풍미 가득한 파스타</strong> 세계 3대 진미로 늘 꼽히며 땅속의 다이아몬드라 불릴 정도로 귀한 식재료인 송로버섯(truffle). 그윽하고 매력적인 특유의 향기 덕분에 송로버섯이 들어간 음식은 어떤 것이라도 금방 고급 요리가 됩니다. 보통 트러플 향이 나는 제품들은 아무리 많아도 함유량이 0.5%를 넘지 않는 것이 보통인데 라 파브리카 트러플 파스타는 여름 송로버섯의 함량이 무려 1%, 송로버섯향은 0.4%나 함유되어 있습니다. 면에 트러플 입자가 눈에 보일 정도로 꽤 많은 양이 들어 있지요. 덕분에 고급스러운 풍미를 듬뿍 맛볼 수 있어요.<br> <br> 널찍한 너비와 통통한 두께 덕에 진한 치즈 소스를 가득히 묻혀 먹으면 더욱 풍부한 맛의 파스타를 즐길 수 있습니다. 트러플 파스타는 고유의 향기가 무척 진하기 때문에 크림소스나 같은 향기를 가진 트러플 오일과 함께 요리해 먹으면 잘 어울려요. 너무 강한 향의 소스보다는 트러플 자체의 풍미를 즐길 수 있도록 크리미한 소스와 함께 요리하세요. </p>
                    </div>
                    <div class="context last">
                        <div class="pic"> <a href="http://www.kurly.com/shop/board/list.php?id=recipe&amp;search%5Bsubject%5D=on&amp;search%5Bword%5D=%C6%C4%BD%BA%C5%B8" target="_blank"><img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv20000020520_1.jpg"></a>
                        </div>
                        <p class="words"> </p>
                    </div>
                </div>
                <div class="goods_tip">
                    <h3><span>Kurly’s Tip</span></h3>
                    <div class="tip_box">
                        <div class="context">
                            <p class="words"> &#x30fb;파스타 1인분의 적정량은 100~130g이며 삶는 시간은 약 9분입니다.<br> &#x30fb;라 파브리카 트러플 파스타는 2인분으로 포장되어 있으니 반 정도의 양으로 1인분을 요리하면 됩니다.<br> &#x30fb;남은 파스타는 가급적이면 개봉 후 2~3일 내에 다 먹는 것이 좋아요.<br> &#x30fb;개봉한 파스타는 밀폐 용기에 담아서 냉장 보관하세요.<br> &#x30fb;혹시 파스타를 만든 후 소스가 애매하게 남았나요? 그렇다면 볶음밥이나 카레 요리에 넣어보세요. 음식의 풍미를 더욱 살려주고 새콤한 맛을 더해주죠. 홈메이드 피자를 만들 때 활용해도 좋아요. </p>
                        </div>
                    </div>
                </div>
                <div class="goods_recipe">
                    <h3> <span class="recipe_tit">Kurly’s Recipe</span> <small class="recipe_product">까르보나라 트러플 파스타</small> </h3>
                    <div class="context ">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv00000020512_1.jpg">
                        </div>
                        <p class="words"> <strong class="recipe_item_tit">재료</strong> 라 파브리카 트러플 파스타 면 100g, 무가당 생크림 1컵, 달걀노른자 1개, 파마산 치즈 1/2컵, 베이컨 3-4줄, 소금, 후추, 화이트 트러플 오일 </p>
                        <p class="words"> <strong class="recipe_item_tit">RECIPE</strong> 1. 깊은 냄비에 물을 넉넉히 담고 소금을 1큰술 정도 넣은 뒤 끓기 시작하면 면을 10~12분간 삶아준다.<br> 2. 볼에 생크림, 달걀노른자를 넣고 잘 섞은 뒤 파마산 치즈를 갈아 듬뿍 넣어주고 소금, 후추를 살짝 넣어 소스를 완성한다.<br> 3. 베이컨은 바싹 구워 여분의 기름을 키친타월에 닦아내고 작은 한입 크기로 잘라둔다.<br> 4. 팬에 소스를 넣고 중약불에서 뭉근히 끓이고 팬 주변이 끓어오르기 시작하면 불을 더 줄여 면을 넣고 소스가 골고루 섞이도록 잘 저어준다. (너무 센 불에서 조리하면 노른자가 익을 수 있으니 주의한다.)<br> 5. 면을 접시에 예쁘게 담고 구워둔 베이컨과 굵은 후추, 화이트 트러플 오일 3~4방울로 마무리한다. </p>
                    </div>
                    <h3> <span class="recipe_tit">Kurly’s Recipe</span> <small class="recipe_product">트러플 크림 파스타</small> </h3>
                    <div class="context last">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv10000020513_1.jpg">
                        </div>
                        <p class="words"> <strong class="recipe_item_tit">재료</strong> 라 파브리카 트러플 파스타 면 100g, 트러플 크림 4~5큰술, 페코리노 치즈 적당량 </p>
                        <p class="words"> <strong class="recipe_item_tit">RECIPE</strong> 1. 깊은 냄비에 물을 넉넉히 담고 소금을 1큰술 정도 넣은 뒤 끓기 시작하면 면을 10~12분간 삶아준다.<br> 2. 팬에 트러플 크림을 넣고 가열해준다. 크림이 녹기 시작하면 삶아둔 면을 넣고 골고루 소스가 배어들게 한다.<br> 3. 접시에 소스를 담고 페코리노 치즈를 듬뿍 뿌려준다. </p>
                    </div>
                </div>
                <div class="about_brand">
                    <h3><span>About Brand</span></h3>
                    <div class="context last">
                        <div class="context_about">
                            <div class="pic">
                                <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv30000020514_1.jpg">
                            </div>
                            <p class="words"> '라 파브리카 델라 파스타 디 그라냐노'는 '그라냐노의 파스타 공장'이라는 의미를 갖고 있습니다. 그라냐노는 파스타의 고향이라고 불릴 정도로 600여 년 이탈리아 파스타의 역사가 그대로 살아있는 지역입니다. 아말피 공화국 시절 이 작은 도시에 무려 140여 곳의 파스타 제조사가 있었고 오로지 파스타를 수송하기 위해 철도가 설치됐습니다. 파스타가 최초로 만들어진 지역은 아니지만 최적의 환경과 장인들의 열정이 이곳을 파스타의 도시로 만들었습니다. 라 파브리카의 파스타는 그라냐노의 장인정신을 이어받은 수제 파스타 브랜드입니다.<br> <br> <b>"그라냐노 거리 곳곳에 파스타 제조자들이 파스타 면을 세탁물같이 막대기에 걸어놓으면, 바다 공기와 산바람, 파스타 향기가 한데 섞여 도시를 취하게 만든다"</b><br> <br> 포브스(Forbes)지의 라이프 섹션에는 이런 문구가 실린 적이 있습니다. 그만큼 그라냐노(Gragnano)는 유서 깊은 파스타의 도시입니다. 나폴리로부터 30km 떨어진 이탈리아의 작은 도시인 이곳은 15세기부터 칼슘이 풍부한 물을 사용해 반죽한 수제 파스타로 유명했습니다. 거리 곳곳마다 파스타 면들이 주렁주렁 걸린 채 건조되고 있었고 이 지역에서 생산된 파스타를 수송하기 위해 이탈리아 철도가 생겼을 정도였죠. 라 파브리카의 전신인 '아펠트라(AFELTRA)'는 그라냐노의 전통 수제 파스타 회사 중의 하나였습니다.<br> <br> 1976년 아펠트라를 인수한 회사의 오너 마리오 모챠(Marion Moccia)는 대량 생산되는 파스타에 대항해 그라냐노 지역의 수제 파스타를 세계적으로 키우기 위해 노력했지요. 하지만 1980년 이탈리아 남부에 발생한 대지진으로 그의 꿈은 무너졌습니다. 많은 파스타 기업들이 사라졌고, 그는 공장을 복구하기 위해 많은 자금을 들였지만 그라냐노의 파스타를 다시 부흥시키기엔 역부족이었죠. 그러던 지난 2007년, 마리오 모챠의 자녀들은 1994년 문을 닫은 아버지의 파스타 회사를 다시 이어가기로 결심했습니다. 치로, 안토니오, 마리안나, 수잔나 모챠 남매는 '라 파브리카 델라 파스타 디 그라냐노(La Fabbrica della Pasta di Gragnano)'를 설립했지요. 가업으로 이어져 오던 수제 파스타 생산 기술을 바탕으로 새로운 기술과 스타일을 적용해, 더욱 발전된 프리미엄 파스타를 생산하기 시작했습니다. 그 결과, 라 파브리카는 131년의 역사를 잇는 세계적인 파스타 기업으로 성장했습니다. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="Review" class="tabcontent">
            <h3>상품 후기</h3>
            <p>여기에는 리뷰가 들어갑니다</p>
        </div>
        <script>
            function count(type)  {
                // 결과를 표시할 element
                let basicPrice = document.getElementById('basic-price');
                const resultElement = document.getElementById('result');
                const resultTotalPrice = document.getElementById('total-price');

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
                    resultTotalPrice.innerText = basicPrice.innerText;
                }else{
                    resultElement.innerText = number;
                    resultTotalPrice.innerText = (parseInt(basicPrice.innerText) * parseInt(number)) + "";
                }

            }

        </script>

        <script>
            function openPage(evt, pageName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(pageName).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>
    </div>
</div>
</body>
</html>

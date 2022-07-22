<%@ page import="com.lotte.products.dto.ProductImgCategoryDto" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--

  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-19
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/productdetail.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <%
        ProductImgCategoryDto dto = (ProductImgCategoryDto)request.getAttribute("dto");
        String detail = (String)request.getAttribute("detail");
        DecimalFormat formatter = new DecimalFormat("###,###");
    %>
</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>
<div id="container">
    <div id="content">
    <jsp:include page="/front/nav.jsp"></jsp:include>
        <div class="section-view">
            <div class="inner-view">
                <div class="thumb" style="background-image: url(../../../css/product-img.png);">
                    <img src="<%=dto.getProductImgNewName() %>" alt="상품 대표 이미지" class="bg">
                </div>
                <p class="goods-name">
                    <strong class="name"><%=dto.getProductName()%></strong>
                    <span class="simple-content"><%=dto.getProductSimpleContent()%></span>
                </p>
                <p class="goods-price">
                    <span class="position">
                        <span class="price">
                            <span id="basic-price">
                                <%=formatter.format(Integer.parseInt(dto.getProductPrice()))%>
                            </span>
                                <span class="won">원</span>
                            </span>
                    </span>
                </p>
                <div class="goods-info">
                    <dl class="list-fst">
                        <dt class="tit">상품 카테고리</dt>
                        <dd class="desc"><%=dto.getCategoryName()%></dd>
                    </dl>
                    <dl class="list">
                        <dt class="tit">상품 유통기한</dt>
                        <dd class="desc"> 해당 유통기한은
                            <%
                                Calendar cal = Calendar.getInstance();
                                cal.setTime(new Date());
                                DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                                String after = dto.getProductDeadline().substring(0,10);
                                LocalDate dBefore = LocalDate.parse(df.format(cal.getTime()), DateTimeFormatter.ISO_LOCAL_DATE);
                                LocalDate dAfter = LocalDate.parse(after, DateTimeFormatter.ISO_LOCAL_DATE);
                                long diff = ChronoUnit.DAYS.between(dBefore, dAfter);
                                String datDiff = Long.toString(diff);
                            %>
                                <%=datDiff%> 일 남았습니다.
                        </dd>
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
                                    <span class="num" id="total-price"> <%=formatter.format(Integer.parseInt(dto.getProductPrice()))%></span>
                                    <span class="won">원</span>
                                </span>
                                    </div>
                                    <p class="txt-point">
                                        <span class="ico">적립</span>
                                        <span class="point">구매 시
                                            <strong class="emph"><span id="result-point"> <%=formatter.format((int)(Integer.parseInt(dto.getProductPrice())*0.03))%></span>원 적립</strong>
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

        <div id="Detail" class="tabcontent"> <!-- 여기에 content 넣기 -->
            <%=detail%>
        </div>

        <div id="Review" class="tabcontent" >
            <h2 class="tit-review">PRODUCT REVIEW</h2>
            <div id="reviewAdd">
                <table class="reviewTable">
                    <col width="180"><col width="500">
                    <tr>
                        <th class="tit">제목</th>
                        <td style="text-align: left;">
                            <input type="text" name="reviewTitle" id="reviewTitle">
                        </td>
                    </tr>
                    <tr>
                        <th class="tit">내용</th>
                        <td style="text-align: left;">
                            <textarea rows="10" cols="30" name="reviewContent" id="reviewContent"></textarea>
                        </td>
                    </tr>
                    <th class="tit">평점</th>
                    <td class="star-rate-box">
                        <select id="star" name='star'>
                            <option class="star-item" id = "1" value='1' selected>1</option>
                            <option class="star-item" id = "2" value='2'>2</option>
                            <option class="star-item" id = "3" value='3'>3</option>
                            <option class="star-item" id = "4" value='4'>4</option>
                            <option class="star-item" id = "5" value='5'>5</option>
                        </select>
                    </td>
                    <tr align="center">
                        <td colspan="2">
                            <button type="button" id="reviewWrite" class="reviewWrite" onclick="reviewInsert();">리뷰 쓰기</button>
                        </td>
                    </tr>
                <table id="reviewListTable" class="reviewListTable">
                    <thead>
                        <th>구분</th>
                        <th>닉네임</th>
                        <th>제목</th>
                        <th>내용</th>
                        <th>수정날짜</th>
                        <th>평점</th>
                        <th>수정버튼</th>
                        <th>삭제버튼</th>
                        <th>좋아요</th>
                    </thead>
                    <tbody id="addReviewData">
                    </tbody>
                <table>

                </table>
            </div>
        </div>
        <script>
            function count(type)  {
                // 결과를 표시할 element
                let basicPrice = document.getElementById('basic-price');
                const resultElement = document.getElementById('result');
                const resultTotalPrice = document.getElementById('total-price');
                const reslutPoint = document.getElementById('result-point');
                let basicPriceFormatRemove = basicPrice.innerText.replaceAll(",","");
                let stock = <%=dto.getProductStock()%>;

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

        </script>

        <script>
            function openPage(evt, pageName) {
                if(pageName == 'Review'){
                    //review 목록 불러오기 ajax 사용
                    reviewCall();
                }
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

            function reviewCall() {
                $.ajax({
                    type: "get",
                    url: "/reviewList",
                    async: true,
                    success: function (data) {
                        let tbody = "";
                        let num = data.list.length;

                        for(let i=0; i<data.list.length; i++){

                            tbody += '<tr id=tr'+ data.list[i].reviewNo +' class="bit-review-item" style="height: 44px;">';
                            tbody += '<td>' +num+ '</td>';
                            tbody += '<td>' +data.list[i].userName+ '</td>';
                            tbody += '<td id=title'+ data.list[i].reviewNo +'>' +data.list[i].reviewTitle+'</td>';
                            tbody += '<td id=content'+ data.list[i].reviewNo +'>' +data.list[i].reviewContent+ '</td>';
                            tbody += '<td>' +data.list[i].reviewModified_at+ '</td>';
                            tbody += '<td>' +data.list[i].reviewRate+ '</td>';
                            tbody += '<td>' +'<button type="button" id=' + data.list[i].reviewNo + ' class=update'+ data.list[i].reviewNo +' onclick="reviewUpdate(this.id);">수정</button>'+ '</td>';
                            tbody += '<td>' +'<button type="button" id=' + data.list[i].reviewNo + ' class="reviewDelete" onclick="reviewDelete(this.id);">삭제</button>'+ '</td>';
                            tbody += '<td>' +'<button type="button" id=like' + data.list[i].reviewNo + ' class="reviewLike" onclick="reviewLike(this.id);">좋아요</button>'+ '</td>';
                            tbody += '</tr>';
                            num--;
                        }

                        $("#addReviewData").empty();
                        $("#addReviewData").append(tbody);

                    },
                    error: function () {
                        alert("review call fail");
                    }
                });
            }

            function reviewInsert(){
                //id 연결되면 바꾸기 쿠키값 넣기
                let userNo = "10"
                let title = document.getElementById("reviewTitle").value;
                let reviewContent = document.getElementById("reviewContent").value;
                let reviewRates = document.getElementById("star");
                let reviewRate = reviewRates.options[reviewRates.selectedIndex].value;

                if(title == null || title.trim() == ""){
                    alert("제목을 입력하세요.");
                    return;
                }
                if(reviewContent == null || reviewContent.trim() == ""){
                    alert("내용을 입력하세요.");
                    return;
                }

                $.ajax({
                    type:"get",
                    url:"/reviewInsert",
                    data:{
                        "userNo":userNo,
                        "reviewTitle":title,
                        "reviewContent":reviewContent,
                        "productNo":<%=dto.getProductNo()%>,
                        "reviewRate":reviewRate
                    },
                    success:function() {
                        reviewCall();
                    },
                    error:function() {
                        alert("review Insert Fail");
                    }
                });
            }

            function reviewUpdate(reviewno){
                let titleid = "#title" + reviewno;
                let contentid =  "#content" + reviewno;
                let updateid = ".update" + reviewno;
                alert($('#titleid'));

                $( titleid ).contents().unwrap().wrap( '<td><input type="text" name="reviewTitle" id=title'+ reviewno + ' size="10" style="border: 1px solid #ccc; height: 30px; font-size:14px; color: #333; line-height: 20px; border-radius: 3px; background-color: #fff; outline: none; vertical-align: top;"></td>' );
                $( contentid ).contents().unwrap().wrap( '<td><input type="text" name="reviewContent" id=content'+ reviewno + ' size="30" style="border: 1px solid #ccc; height: 30px; font-size:14px; color: #333; line-height: 20px; border-radius: 3px; background-color: #fff; outline: none; vertical-align: top;"></td>' );
                $( updateid ).contents().unwrap().wrap('<td><button type="button" id=' + reviewno + ' class="reviewCheck" onclick="reviewCheck(this.id);">확인</button></td>');
            }

            function reviewCheck(id){
                let updateTitle = document.getElementById("title"+id).value;
                let updateContent = document.getElementById("content"+id).value;

                if(updateTitle == null || updateTitle.trim() == ""){
                    alert("제목을 입력하세요.");
                    return;
                }
                if(updateContent == null || updateContent.trim() == ""){
                    alert("내용을 입력하세요.");
                    return;
                }
                alert(updateTitle);

                $.ajax({
                    type:"get",
                    url:"/reviewUpdate",
                    data:{"id":id,
                          "updateTitle":updateTitle,
                          "updateContent":updateContent
                    },
                    success:function () {
                        reviewCall();
                    },
                    error:function () {
                        alert("update fail");
                    }
                })
            }

            function reviewDelete(reviewno){
                $.ajax({
                    type:"get",
                    url:"/reviewDelete",
                    data:{"reviewno":reviewno},
                    success:function () {
                        reviewCall();
                    },
                    error:function () {
                        alert("delete fail");
                    }
                });
            }

            function reviewLike(reviewno){

            }

        </script>
    </div>
</div>
</body>
</html>

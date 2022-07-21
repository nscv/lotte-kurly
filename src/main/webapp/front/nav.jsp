<%--
  Created by IntelliJ IDEA.
  User: BTC-N28
  Date: 2022-07-19
  Time: 오후 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/nav.css">
    <title>Title</title>
</head>
<body>

<div class="quick_banner">
    <div class="emptyBox">
        <div class="containerBox">
            <div class="title">최근 본 상품</div>
            <ul class="previewAttachSpot">
                <li>
                    <img class="recent-img" id="0" src="/front/images/thumbnail_small.png" onclick="detailMove(this.id)">
                </li>
                <li>
                    <img class="recent-img" id="1" src="/front/images/thumbnail_small.png" onclick="detailMove(this.id)">
                </li>
                <li>
                    <img class="recent-img" id="2" src="/front/images/thumbnail_small.png" onclick="detailMove(this.id)">
                </li>
            </ul>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        //jsp 업로드 될 때마다 localStorage 확인 후 이미지 매칭
        var arr = localStorage.getItem('list');

        //이미지 없으면 기본 이미지 셋팅
        if( arr == null) {
            arr = []
            for(let i=0; i<arr.length; i++){
                document.getElementById(i+"").src = "/front/images/thumbnail_small.png";
            }
        }
        //이미지 있으면 이미지 셋팅
        else {
            arr = JSON.parse(arr);

            for(let i=0; i<3; i++){
                if(i<arr.length){
                    let imgsrc = arr[i].split("|")[1];
                    document.getElementById(i+"").src = imgsrc;
                }else{
                    document.getElementById(i+"").src = "/front/images/thumbnail_small.png";
                }
            }
        }

        //스크롤 시 오늘 본 상품 따라가기
        var currentPosition = parseInt($(".quick_banner").css("top"))
        $(window).scroll(function () {
            var position = $(window).scrollTop();
            $(".quick_banner").stop().animate({"top":position+currentPosition+"px"},1000);
        });
    });

    //오늘 본 상품 클릭하면 localStorage에 상품no:이미지 json형태로 저장 후 detail이동
    function detailMove(id) {
        if (document.getElementById(id).src != "http://localhost:8050/front/images/thumbnail_small.png") {
            var arr = localStorage.getItem('list');
            arr = JSON.parse(arr);
            location.href = "/product/productdetail?productNo=" + arr[id].split("|")[0];
        }
    }

    //상품 클릭하면 localStorage에 상품no:이미지 json형태로 저장 후 detail이동
    function imageDataToNav(id){
        var imgno = document.getElementById(id).id;
        var imgsrc = document.getElementById(id).src

        /* localStorage */
        var arr = localStorage.getItem('list');
        if( arr == null) { arr = [] } else { arr = JSON.parse(arr)};
        var str = imgno+'|'+imgsrc;

        arr.unshift(str);
        arr = new Set(arr);
        arr = [...arr];

        localStorage.setItem('list',JSON.stringify(arr));
        location.href = "/product/productdetail?productNo=" + imgno;
    }
</script>
</body>
</html>

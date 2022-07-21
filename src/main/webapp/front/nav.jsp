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
    <title>Title</title>
    <style>
        .quick_banner {
            width: 144px;
            height: 444px;
            position: absolute;
            top: 200px;
            right: 130px;
            background-color: #BBBDF2;
        }

        .emptyBox {
            display: flex;
            align-items: center;
            margin: 32px 12px;
            width: 80%;
            height: 80%;
            background-color: white;
        }

        .containerBox {
            border: 1px solid rgba(204, 204, 204, 70);
            margin: 0 auto;
            width: 90%;
            height: 90%;
        }

        .title {
            text-align: center;
            font-size: 15px;
        }

        .previewAttachSpot {
            /*width: 100%;*/
            width: 90px;
            height: 100%;
            list-style: none;
            margin: auto;
            /*padding: 15px;*/
            padding: 0;
        }

        .previewAttachSpot li {
            width: 70px;
            margin: auto;
            padding-top: 5px;
        }

        img {
            width: 70px;
            height: 90px;
            margin: auto;
        }


    </style>
</head>
<body>

<div class="quick_banner">
    <div class="emptyBox">
        <div class="containerBox">
            <div class="title">최근 본 상품</div>
            <ul class="previewAttachSpot">
                <li>
                    <img id="0" src="<%=request.getContextPath()%>/front/images/thumbnail_small.png" onclick="deatailMove(this.id)">
                </li>
                <li>
                    <img id="1" src="<%=request.getContextPath()%>/front/images/thumbnail_small.png" onclick="deatailMove(this.id)">
                </li>
                <li>
                    <img id="2" src="<%=request.getContextPath()%>/front/images/thumbnail_small.png" onclick="deatailMove(this.id)">
                </li>
            </ul>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        var arr = localStorage.getItem('list');
        if( arr == null) { arr = [] }
        else {
            arr = JSON.parse(arr);

            for(let i=0; i<arr.length; i++){
                if(i==3) break;
                let imgsrc = arr[i].split("|")[1];
                document.getElementById(i+"").src = imgsrc;
            }
        }

        var currentPosition = parseInt($(".quick_banner").css("top"))
        $(window).scroll(function () {
            var position = $(window).scrollTop();
            $(".quick_banner").stop().animate({"top":position+currentPosition+"px"},1000);
        });
    });


</script>
</body>
</html>

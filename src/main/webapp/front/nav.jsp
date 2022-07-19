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
            top: 150px;
            right: 170px;
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
                    <a href="">
                        <img src="./images/thumbnail_small.png" alt="상품 상세보기">
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./images/thumbnail_small.png" alt="상품 상세보기">
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./images/thumbnail_small.png" alt="상품 상세보기">
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>

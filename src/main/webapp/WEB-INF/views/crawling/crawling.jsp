<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Crawling</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
Crawling

<script type="text/javascript">
    $(document).ready(function() {
        let authValue = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiMzc0ZTMyOWMtZmYwOC00NDA2LTlhYjgtNjM0NDFmZGY4YjY1IiwiaXNfZ3Vlc3QiOnRydWUsInV1aWQiOm51bGwsIm1fbm8iOm51bGwsIm1faWQiOm51bGwsImxldmVsIjpudWxsLCJzdWIiOm51bGwsImlzcyI6Imh0dHA6Ly9ta3dlYi5hcGkua3VybHkuc2VydmljZXMvdjMvYXV0aC9ndWVzdCIsImlhdCI6MTY1ODIwNjIwMSwiZXhwIjoxNjU4MjA5ODAxLCJuYmYiOjE2NTgyMDYyMDEsImp0aSI6IkhqdDY3U1dTSE1vV2hZdHUifQ.Mq7GB-VkxgxDT-rARuTTF8yYfV4S_Ktuwlbw4FkWnW8";

        //category에 데이터 삽입
        $.ajax({
            url:"https://api.kurly.com/v2/categories?ver=1",
            type:"get",
            headers: {
                "authorization":authValue,
            },
            success:function(data) {
                let categories = data.data.categories;

                $.ajax({
                    type:"post",
                    url:"crawlingCategory",
                    data:{"categories" : JSON.stringify(categories)},
                    success:function (){
                        alert("crawlingCategory 성공");
                    },
                    error:function (){
                        alert("crawling crawlingCategory controller error")
                    }
                });
            },
            error:function(){
                alert('crawlingCategory error');
            }
        });

        //product와 product_imgs 데이터 넣기
        $.ajax({
            url:"https://api.kurly.com/v1/categories/233?page_limit=99&page_no=1&delivery_type=0&sort_type=&ver=1658206201885",
            type:"get",
            headers: {
                "authorization":authValue,
            },
            success:function(data){
                setTimeout(function() {}, 1000);

                /* 받아온 데이터 json 변환 */
                let product_category = JSON.stringify(data.data.category_no);
                let products = data.data.products;
                for(let i=0; i<products.length; i++){
                    products[i].category_no = product_category;
                }

                $.ajax({
                    type:"post",
                    url:"crawlingList",
                    data:{"products" : JSON.stringify(products)},
                    success:function (){
                        alert("crawlingList 성공");
                    },
                    error:function (){
                        alert("crawling crawlingList controller error")
                    }
                });
            },
            error:function(){
                alert('crawlingList error');
            }
        });

    });


</script>

</body>
</html>
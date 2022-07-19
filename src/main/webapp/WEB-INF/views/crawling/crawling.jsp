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
        //product와 product_imgs 데이터 넣기
        $.ajax({
            url:"https://api.kurly.com/v1/categories/908?page_limit=99&page_no=1&delivery_type=0&sort_type=&ver=1658197416172",
            type:"get",
            /* 크로스오리진 에러때문에 요청이 받아오지 않을 수 있다. */
            headers: {
                "authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiMmQ5MjM5MmUtMjA4MC00ZGIwLWE2MjUtODQxNzIwZTU3NzEwIiwiaXNfZ3Vlc3QiOnRydWUsInV1aWQiOm51bGwsIm1fbm8iOm51bGwsIm1faWQiOm51bGwsImxldmVsIjpudWxsLCJzdWIiOm51bGwsImlzcyI6Imh0dHA6Ly9ta3dlYi5hcGkua3VybHkuc2VydmljZXMvdjMvYXV0aC9ndWVzdCIsImlhdCI6MTY1ODE5NzQxNCwiZXhwIjoxNjU4MjAxMDE0LCJuYmYiOjE2NTgxOTc0MTQsImp0aSI6IlBDdHFWSGhWejFZVHBGdTUifQ.BsmsZH1TBxue5OpiUUhuJ5yMi_tbhcQPmDVM516tghg",
            },
            success:function(data){

                /* 받아온 데이터 json 변환 */
                let product_category = JSON.stringify(data.data.category_no);
                let products = data.data.products;
                for(let i=0; i<products.length; i++){
                    products[i].category_no = product_category;
                }

                alert(products[1].category_no);

                $.ajax({
                    type:"post",
                    url:"crawlingList",
                    data:{"products" : JSON.stringify(products)},
                    success:function (data){
                        alert("data save success");
                    },
                    error:function (){
                        alert("crawling controller error")
                    }
                });
            },
            error:function(){
                alert('crawling error');
            }
        });
    });


</script>

</body>
</html>
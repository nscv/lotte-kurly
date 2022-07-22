<%@ page import="java.util.List" %>
<%@ page import="com.lotte.products.dto.ProductListDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/admin.css">
    <style type="text/css">
        a.insert-tag:link {
            text-decoration: none;
            color: #525AF2;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row flex-nowrap" style="height: 820px;">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-kerly">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-black min-vh-100">
                <a href="/admin/main" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-black text-decoration-none">
                    <img src="/front/images/lotte-kurly-white-logo.png" class="logo-img">
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li class="nav-item">
                        <a href="/admin/main" class="nav-link align-middle px-0">
                            <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>
                    <hr class="grey-hr">
                    <li>
                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <img class="icon-img" src="../../../front/images/product.png"><span class="ms-1 d-none d-sm-inline titlemenu">상품 관리</span> </a>
                        <ul class="collapse show nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="/admin/product" class="nav-link px-0"> 상품 재고 </option><span class="d-none d-sm-inline"></span>  </a>
                            </li>
                            <li>
                                <a href="/admin/register" class="nav-link px-0">상품 <span class="d-none d-sm-inline"> 등록</span> </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div id="product" style="background-color: #E2E2E2; padding: 50px 100px;">
            <h2 style="margin-bottom: 30px;">상품 등록</h2>
            <div id="product-list" style="background-color: white; width: 1370px; height: 660px;">
                <div id="product-table" style="padding: 55px; overflow-y: scroll; height: 100%;">
                    <table class="table table-hover" style="text-align: center;">
                        <col width="100px"><col width="100px"><col width="100px"><col width="100px"><col width="100px">
                        <tr>
                            <th>상품 이름</th>
                            <td><input type="text" id="productName" name="productName"></td>
                        </tr>
                        <tr>
                            <th>상품 이미지</th>
                            <td><input type="file" style="margin-left: 76px; "></td>
                        </tr>
                        <tr>
                            <th>상품 카테고리</th>
                            <td>
                                <select name="productCategory" style="margin-right: 70px;">
<%--                                    <option value="채소">채소</option>--%>
<%--                                    <option value="과일·견과·쌀">과일·견과·쌀</option>--%>
<%--                                    <option value="수산·해산·건어물">수산·해산·건어물</option>--%>
<%--                                    <option value="정육·계란">정육·계란</option>--%>
<%--                                    <option value="국·반찬·메인요리">국·반찬·메인요리</option>--%>
<%--                                    <option value="샐러드·간편식">샐러드·간편식</option>--%>
<%--                                    <option value="면·양념·오일">면·양념·오일</option>--%>
<%--                                    <option value="생수·음료·우유·커피">생수·음료·우유·커피</option>--%>
<%--                                    <option value="간식·과자·떡">간식·과자·떡</option>--%>
<%--                                    <option value="베이커리·치즈·델리">베이커리·치즈·델리</option>--%>
<%--                                    <option value="건강식품">건강식품</option>--%>
<%--                                    <option value="와인">와인</option>--%>
<%--                                    <option value="전통주">전통주</option>--%>
<%--                                    <option value="생활용품·리빙·캠핑">생활용품·리빙·캠핑</option>--%>
<%--                                    <option value="스킨케어·메이크업">스킨케어·메이크업</option>--%>
<%--                                    <option value="헤어·바디·구강">헤어·바디·구강</option>--%>
<%--                                    <option value="주방용품">주방용품</option>--%>
<%--                                    <option value="가전제품">가전제품</option>--%>
<%--                                    <option value="반려동물">반려동물</option>--%>
<%--                                    <option value="베이비·키즈·완구">베이비·키즈·완구</option>--%>
                                        <option value="907">채소</option>
                                        <option value="908">과일·견과·쌀</option>
                                        <option value="909">수산·해산·건어물</option>
                                        <option value="910">정육·계란</option>
                                        <option value="911">국·반찬·메인요리</option>
                                        <option value="912">샐러드·간편식</option>
                                        <option value="913">면·양념·오일</option>
                                        <option value="914">생수·음료·우유·커피</option>
                                        <option value="249">간식·과자·떡</option>
                                        <option value="915">베이커리·치즈·델리</option>
                                        <option value="32">건강식품</option>
                                        <option value="722">와인</option>
                                        <option value="251">전통주</option>
                                        <option value="918">생활용품·리빙·캠핑</option>
                                        <option value="233">스킨케어·메이크업></option>
                                        <option value="12">헤어·바디·구강</option>
                                        <option value="916">주방용품</option>
                                        <option value="85">가전제품</option>
                                        <option value="991">반려동물</option>
                                        <option value="919">베이비·키즈·완구</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>상품 설명</th>
                            <td><textarea cols="25" rows="5" id="productContent" name="productContent"></textarea></td>
                        </tr>
                        <tr>
                            <th>상품 간단 설명</th>
                            <td><input type="text" id="productSimpleContent" name="productSimpleContent"></td>
                        </tr>
                        <tr>
                            <th>상품 가격</th>
                            <td><input type="text" id="productPrice" name="productPrice"></td>
                        </tr>
                        <tr>
                            <th>상품 유통기한</th>
                            <td><input type="date" id="productDeadline" name="productDeadline"></td>
                        </tr>
                        <tr>
                            <th>상품 재고</th>
                            <td><input type="text" id="productStock" name="productStock"></td>
                        </tr>
                        </thead>
                        <tr>
                            <td colspan="2">
                                <button type="button" id="setProduct">추가</button>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    $('#setProduct').click(function() {
        let dto = {
            productNo: $("select[name=productCategory]").val(),
            categoryNo: 0,
            productName: $('#productName').val(),
            productContent: $('#productContent').val(),
            productSimpleContent: $('#productSimpleContent').val(),
            productDeadline: $('#productDeadline').val(),
            productPrice: $('#productPrice').val(),
            productAmount: 0,
            productStock: $('#productStock').val(),
            productCategory: 'test'
        }
        console.dir(dto);
        // console.dir(JSON.stringify(dto));
        $.ajax({
            type: 'POST',
            url: '/admin/set/product',
            data: {
                productNo: 0,
                categoryNo: $("select[name=productCategory]").val(),
                productName: $('#productName').val(),
                productContent: $('#productContent').val(),
                productSimpleContent: $('#productSimpleContent').val(),
                productDeadline: $('#productDeadline').val(),
                productPrice: $('#productPrice').val(),
                productAmount: 0,
                productStock: $('#productStock').val(),
                productCategory: 'test'
            },
            success: function(data) {
                window.location.href = '/admin/product'
            },
            error: function() {
                alert('err');
            }
        })
    })
</script>
</body>
</html>

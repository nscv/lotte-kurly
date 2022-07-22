<%@ page import="java.util.List" %>
<%@ page import="com.lotte.products.dto.ProductListDto" %>
<%@ page import="com.lotte.products.dto.ProductImgCategoryDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ProductImgCategoryDto product = (ProductImgCategoryDto) request.getAttribute("product");
    String userno = "";
    String isvalid = "";
    String userRole = "";

    Cookie[] cookies = request.getCookies() ;
    if(cookies != null){
        for(int i=0; i < cookies.length; i++){
            if (cookies[i].getName().equals("userno")) {
                userno = cookies[i].getValue();
            } else if (cookies[i].getName().equals("isvalid")) {
                isvalid = cookies[i].getValue();
            } else if(cookies[i].getName().equals("userrole")) {
                userRole = cookies[i].getValue();
            }
        }
    }
%>
<%
    if(!userRole.equals("admin")) {
%>
<script>
    alert("접근할 수 없는 계정입니다.");
    location.href="/product/main";
</script>
<%
    }
%>
<html>
<head>
    <title>Lotte Kurly - 재고 수정</title>
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
                    <a href="/product/main"><img src="/front/images/lotte-kurly-white-logo.png" class="logo-img"></a>
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
            <div id="product-list" style="background-color: white; width: 1370px; height: 600px;">
                <div id="product-table" style="padding: 55px; overflow-y: scroll; height: 100%;">
                    <table class="table" style="text-align: center;">
                        <col width="100px"><col width="100px"><col width="100px"><col width="100px"><col width="100px">
                        <tr>
                            <th>상품 번호</th>
                            <td><%=product.getProductNo()%></td>
                        </tr>
                        <tr>
                            <th>상품 이름</th>
                            <td><%=product.getProductName()%></td>
                        </tr>
                        <tr>
                            <th>상품 가격</th>
                            <td><%=product.getProductPrice()%></td>
                        </tr>
                        <tr>
                            <th>상품 재고</th>
                            <td><%=product.getProductStock()%></td>
                        </tr>
                        <tr>
                            <th>추가할 값</th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input id="updateProduct" type="button" value="재고 업데이트">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#updateProduct').click(function() {
        $.post()
    })
</script>
</body>
</html>

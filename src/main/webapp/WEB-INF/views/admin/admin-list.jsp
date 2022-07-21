<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-19
  Time: 오후 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin-Main</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/admin.css">

</head>
<body>
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-kerly">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-black min-vh-100">
                <a href="/admin/admin-main.jsp" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-black text-decoration-none">
                    <img src="/front/images/lotte-kurly-white-logo.png" class="logo-img">
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li class="nav-item">
                        <a href="#" class="nav-link align-middle px-0">
                            <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>
                    <hr class="grey-hr">
                    <li>
                        <a href="#submenu1" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <img class="icon-img" src="../../../front/images/user.png"><span class="ms-1 d-none d-sm-inline titlemenu">회원 관리</span> </a>
                        <ul class="collapse show nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                 <a href="#" class="nav-link px-0">연령별 <span class="d-none d-sm-inline"> 회원 현황</span>  </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0"> 성별<span class="d-none d-sm-inline"> 회원 현황</span> </a>
                            </li>
                        </ul>
                    </li>
                    <hr class="grey-hr">
                    <li>
                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <img class="icon-img" src="../../../front/images/product.png"><span class="ms-1 d-none d-sm-inline titlemenu">상품 관리</span> </a>
                        <ul class="collapse show nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0"> 상품 매출<span class="d-none d-sm-inline"> 현황</span>  </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0">상품 재고 <span class="d-none d-sm-inline"> 및 등록</span> </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<%@ page import="com.lotte.admin.dto.UserAgeDto" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lotte.admin.dto.UserGenderDto" %>
<%@ page import="com.lotte.admin.dto.ProductCategoryDto" %>
<%@ page import="com.lotte.admin.dto.TotalOrderDto" %>
<%@ page import="com.lotte.users.dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: BTC-N10
  Date: 2022-07-21
  Time: 오전 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<UserAgeDto> ageList = (List<UserAgeDto>)request.getAttribute("age");
    List<UserGenderDto> genderList = (List<UserGenderDto>)request.getAttribute("gender");
    List<ProductCategoryDto> categoryList = (List<ProductCategoryDto>)request.getAttribute("category");
    List<TotalOrderDto> orderList = (List<TotalOrderDto>)request.getAttribute("date");
    List<TotalOrderDto> monthList = (List<TotalOrderDto>)request.getAttribute("month");
    List<TotalOrderDto> yearList = (List<TotalOrderDto>)request.getAttribute("year");
    int total = (int)request.getAttribute("total");

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
    // location.href="/product/main";
</script>
<%
    }
%>
<html>
<head>
    <title>Lotte Kurly - 관리자</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/admin.css">
    <script type="text/css">
        @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");

        body {
            font-family: "Noto Sans KR", sans-serif;
        }
        #container-age {
            height: 400px;
        }

        #container-gender {
            height: 400px;
        }
        #container-category {
            height: 400px;
        }
        .highcharts-figure,
        .highcharts-data-table table {
            min-width: 360px;
            max-width: 800px;
            margin: 1em auto;
        }

        .highcharts-data-table table {
            font-family: Verdana, sans-serif;
            border-collapse: collapse;
            border: 1px solid #ebebeb;
            margin: 10px auto;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        .highcharts-data-table caption {
            padding: 1em 0;
            font-size: 1.2em;
            color: #555;
        }

        .highcharts-data-table th {
            font-weight: 600;
            padding: 0.5em;
        }

        .highcharts-data-table td,
        .highcharts-data-table th,
        .highcharts-data-table caption {
            padding: 0.5em;
        }

        .highcharts-data-table thead tr,
        .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }

        .highcharts-data-table tr:hover {
            background: #f1f7ff;
        }
        .highcharts-figure,
        .highcharts-data-table table {
            min-width: 320px;
            max-width: 800px;
            margin: 1em auto;
        }

        .highcharts-data-table table {
            font-family: Verdana, sans-serif;
            border-collapse: collapse;
            border: 1px solid #ebebeb;
            margin: 10px auto;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        .highcharts-data-table caption {
            padding: 1em 0;
            font-size: 1.2em;
            color: #555;
        }

        .highcharts-data-table th {
            font-weight: 600;
            padding: 0.5em;
        }

        .highcharts-data-table td,
        .highcharts-data-table th,
        .highcharts-data-table caption {
            padding: 0.5em;
        }

        .highcharts-data-table thead tr,
        .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }

        .highcharts-data-table tr:hover {
            background: #f1f7ff;
        }

    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row flex-nowrap" style="height: auto;">
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
        <div style="padding: 0px;">
            <div id="admin-main" style="background-color: #E2E2E2;">
                <div id="static-container">
                    <h2 style="padding: 40px 50px">Dashboard</h2>
                    <table style="margin-left: 50px;">
                        <col width="5px"><col width="465px"><col width="5px"><col width="465px"><col width="5px"><col width="465px">
                        <tr>
                            <td style="background-color: #525AF2">
                            </td>
                            <td>
                                <div id="month" style="margin: 0px; height: 100px; width: 350px; padding: 15px 50px 30px 50px; border-radius: 0px 10px 10px 0px; background-color: white; box-shadow: 5px 5px #bababa;">
                                    <%
                                        for(TotalOrderDto month : monthList) {
                                    %>
                                    <small>
                                        <p style="color: #525AF2; margin: 0px; font-size: 12px;"> EARNINGS (MONTHLY)</p>
                                        <%= month.getCreated_at() %>월 매출액<br/>
                                    </small>
                                    <p style="font-size: 20px;"><%=month.getTotal()%>원</p>
                                    <%
                                        }
                                    %>
                                </div>
                            </td>
                            <td style="background-color: #777DF2">
                            </td>
                            <td>
                                <div id="year" style="margin: 0px; height: 100px; width: 350px; padding: 15px 50px 30px 50px; border-radius: 0px 10px 10px 0px; background-color: white; box-shadow: 5px 5px #bababa;">
                                    <%
                                        for(TotalOrderDto year : yearList) {
                                    %>
                                    <small>
                                        <p style="color: #777DF2; margin: 0px; font-size: 12px;"> EARNINGS (ANNUAL)</p>
                                        <%= year.getCreated_at() %>월 매출액<br/>
                                    </small>
                                    <p style="font-size: 20px;"><%=year.getTotal()%>원</p>
                                    <%
                                        }
                                    %>
                                </div>
                            </td>
                            <td style="background-color: #BBBDF2">
                            </td>
                            <td>
                                <div id="order" style="margin: 0px; height: 100px; width: 350px; padding: 15px 50px 30px 50px; border-radius: 0px 10px 10px 0px; background-color: white; box-shadow: 5px 5px #bababa;">

                                    <small>
                                        <p style="color: #BBBDF2; margin: 0px; font-size: 12px;"> EARNINGS (ANNUAL)</p>
                                        총 주문 수<br/>
                                    </small>
                                    <p style="font-size: 20px;"><%=total %></p>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <table>
                    <tr>
                        <td>
                            <div id="container-date" style="margin: 50px; box-shadow: 15px 15px #bababa; border-radius: 10px;">
                            </div>
                        </td>
                        <td>
                            <div id="container-category" style="margin: 50px; box-shadow: 15px 15px #bababa; border-radius: 10px;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="container-gender" style="margin: 50px; box-shadow: 15px 15px #bababa; border-radius: 10px;"></div>
                        </td>
                        <td>
                            <div id="container-age" style="margin: 50px; box-shadow: 15px 15px #bababa; border-radius: 10px;"></div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    Highcharts.chart('container-date', {
        chart: {
            type: 'line'
        },
        title: {
            text: '날짜 별 매출 현황'
        },
        xAxis: {
            categories: [
                // "07/19/2022", "07/21/2022"
                <%
                    for(TotalOrderDto date : orderList) {
                %>
                '<%=date.getCreated_at()%>',
                <%
                }
                %>]
        },
        yAxis: {
            title: {
                text: '원(Won)'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: '금액',
            data: [
            <%
                for(TotalOrderDto date : orderList) {
            %>
                <%=date.getTotal()%>,
            <%
            }
            %>]
        }]
    });

    const ageChart = Highcharts.chart('container-age', {
        title: {
            text: '연령 별 구매 금액'
        },
        xAxis: {
            categories: [
                <%
                for(UserAgeDto age : ageList) {
                %>
                '<%=age.getUserAge()%>대',
                <%
                }
                %>
            ]
        },
        series: [{
            type: 'column',
            colorByPoint: true,
            data: [
                <%
                for(UserAgeDto age : ageList) {
                %>
                <%=age.getTotal()%>,
                <%
                }
                %>
            ],
            showInLegend: false
        }]
    });

    const genderChart = Highcharts.chart('container-gender', {
        title: {
            text: '성별 구매 금액'
        },
        xAxis: {
            categories: [
                <%
                for(UserGenderDto gender : genderList) {
                %>
                '<%=gender.getUserGender() ? "남자" : "여자"%>',
                <%
                }
                %>
            ]
        },
        series: [{
            type: 'column',
            colorByPoint: true,
            data: [
                <%
                for(UserGenderDto gender : genderList) {
                %>
                <%=gender.getTotal()%>,
                <%
                }
                %>
            ],
            showInLegend: false
        }]
    });
    Highcharts.chart('container-category', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },
        title: {
            text: '카테고리 별<br/>구매 현황',
            align: 'center',
            verticalAlign: 'middle',
            y: 60
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            dataLabels: {
                enabled: true,
                distance: -50,
                style: {
                    fontWeight: 'bold',
                    color: 'white'
                }
            },
            startAngle: -90,
            endAngle: 90,
            center: ['50%', '75%'],
            size: '110%'
        }
    },
    series: [{
        type: 'pie',
        name: '카테고리 별 판매량',
        innerSize: '50%',
        data: [
            <%
            for(ProductCategoryDto category : categoryList) {
            %>
                ['<%=category.getCategoryName()%>', <%=category.getTotal()%>],
                <%
                }
                %>
            ]
        }]
    });
</script>
</body>
</html>

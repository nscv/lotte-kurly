<%@ page import="java.util.List" %>
<%@ page import="com.lotte.admin.dto.UserAgeDto" %>
<%@ page import="com.lotte.admin.dto.UserGenderDto" %><%--
  Created by IntelliJ IDEA.
  User: BTC-N10
  Date: 2022-07-19
  Time: 오후 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<UserGenderDto> genderList = (List<UserGenderDto>)request.getAttribute("gender");
%>

<html>
<head>
    <title>Title</title>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/css">
        #container {
            height: 400px;
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
<div id="container">
</div>
<script type="text/javascript">
    const chart = Highcharts.chart('container', {
        title: {
            text: '성별 별 구매 금액'
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

    document.getElementById('plain').addEventListener('click', () => {
        chart.update({
            chart: {
                inverted: false,
                polar: false
            },
            subtitle: {
                text: 'Plain'
            }
        });
    });

    document.getElementById('inverted').addEventListener('click', () => {
        chart.update({
            chart: {
                inverted: true,
                polar: false
            },
            subtitle: {
                text: 'Inverted'
            }
        });
    });

    document.getElementById('polar').addEventListener('click', () => {
        chart.update({
            chart: {
                inverted: false,
                polar: true
            },
            subtitle: {
                text: 'Polar'
            }
        });
    });
</script>
</body>
</html>

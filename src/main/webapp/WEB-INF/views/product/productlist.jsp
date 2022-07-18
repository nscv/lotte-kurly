<%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-18
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<script>
$(function(){
    //foodselectlist();
});
    function foodselectlist(){
        $.ajax({
            url:"productlist",
            type:"GET",
            dataType:"json",
            error:function(xhr,status,msg){
                alert("상태값: "+status+"에러"+msg);
            },
            success:function(data){
                alert(data);
            }
        });
    };
    function foodResultList(data){
        $('#foodlist').empty();
        $.each(data,function(idx,item){
           $('#foodlist').append(
               '<td>'+item.list[0].name+'</td>'
           )
        });
    };
</script>
<body>
<div>
    <td>
        <div id="select" title="경기를선택하세요">
            <c:forEach items="${list}" var="m">
                <div value="${m.productNo}">${m.productName},${m.productPrice}</div>
            </c:forEach>
        </div>
    </td>
</div>
</body>
</html>

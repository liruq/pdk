<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>cbstool</title>
    <link type="text/css" rel="stylesheet" href="../../static/global/css/style.css"/>
    <script type="text/javascript" src="../../static/global/scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../../static/global/scripts/menu.js"></script>
    <script type="text/javascript" src="../../static/global/scripts/bootstrap.min.js"></script>
    <link type="text/javascript" src="" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/global/css/hg.css"/>
    <link type="text/css" rel="stylesheet" href="../../static/global/css/bootstrap.min.css"/>

    <script type="text/javascript" src="/static/global/scripts/jquery.form.js"></script>
    <script type="text/javascript" src="/static/global/scripts/jsonUtils.js"></script>
</head>

<body>
销售订单查询

<table class="commonTable" id="orderDetailTable">
    <thead>
    <th>商品名字</th>
    <th>数量</th>
    <th>消费者id</th>
    <%--<th>消费者姓名</th>--%>
    <th>销售价</th>
    <th>经手人</th>
    <th>快递公司</th>
    <th>快递单号</th>
    </thead>
    <tbody>
    <c:forEach var="order" items="${list}" varStatus="status">
        <input type="text" id="id${ status.index}" style="display: none" value="${order.id}">
    <tr>
        <td>
                ${order.productName}
        </td>
        <td>
                ${order.count}
        </td>
        <td>
                ${order.comsumerId}
        </td>
        <%--<td>--%>
                <%--${order.}--%>
        <%--</td>--%>
        <td>
                ${order.price}
        </td>
        <td>
                ${order.brokerage}
        </td>

        <td>
                ${order.expressCom}

        </td>
        <td>
                ${order.expressNum}

        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>


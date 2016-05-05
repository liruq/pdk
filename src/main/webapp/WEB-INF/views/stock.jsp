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
商品库存查询

<table class="commonTable" id="orderDetailTable">
    <thead>
    <th>商品id</th>
    <th>商品名字</th>
    <th>库存</th>
    <th>历史进货总数</th>
    <th>历史销售总数</th>
    </thead>
    <tbody>
    <c:forEach var="item" items="${list}" varStatus="status">
    <tr>
        <td>
                ${item.id}
        </td>
        <td>
                ${item.name}
        </td>
        <td>
                ${item.count}
        </td>
        <td>
                ${item.inCount}
        </td>
        <td>
                ${item.outCount}
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>


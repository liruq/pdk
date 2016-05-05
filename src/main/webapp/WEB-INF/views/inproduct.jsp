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

<table class="commonTable" id="itemDetailTable">
    <thead>
    <th>商品名字</th>
    <th>供应商</th>
    <th>进货单价</th>
    <th>进货数量</th>
    <th>结算方式</th>
    <th>应付</th>
    <th>已付</th>
    <th>未付</th>
    <th>经手人</th>
    <th>操作人</th>
    <th>进货时间</th>
    </thead>
    <tbody>
    <c:forEach var="item" items="${list}" varStatus="status">
        <input type="text" id="id${ status.index}" style="display: none" value="${item.id}">
    <tr>
        <td>
                ${item.productName}
        </td>
        <td>
                ${item.vendor}
        </td>
        <td>
                ${item.inprice}
        </td>
        <td>
                ${item.count}
        </td>
        <td>
                ${item.settlement}
        </td>

        <td>
                ${item.payable}

        </td>
        <td>
                ${item.paid}
        </td>
        <td>
                ${item.unpay}
        </td>
        <td>
                ${item.brokerage}
        </td>
        <td>
                ${item.operateUserAccount}
        </td>
        <td>
                ${item.createTime}
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>


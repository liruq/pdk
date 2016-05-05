<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>cbstool</title>
  <link type="text/css" rel="stylesheet" href="../../static/global/css/style.css"/>
  <script type="text/javascript" src="../../static/global/plugins/jquery.min.js"></script>
  <script type="text/javascript" src="../../static/global/scripts/menu.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
  <div class="logo">ERP 订单管理系统</div>
</div>
<div id="content">
  <div class="left_menu">
    <ul id="nav_dot">
      <li>
        <h4 class="M1"><span></span>商品管理</h4>
        <div class="list-item none">
          <a href='jst/inorder' target="rightFrame">商品进货登记</a>
        </div>
      </li>

      <li>
        <h4 class="M1"><span></span>销售订单管理</h4>
        <div class="list-item none">
          <a href='jst/order' target="rightFrame">订单登记</a>
          <a href='/confirmOrderPage' target="rightFrame">订单确认</a>
          <a href='jst/reorder' target="rightFrame">退货订单登记</a>
        </div>
      </li>

      <li>
        <h4 class="M1"><span></span>查询统计</h4>
        <div class="list-item none">
          <a href='/stock' target="rightFrame">商品库存查询</a>
          <a href='jst/yl/ylStock' target="rightFrame">商品进货查询</a>
          <a href='/orderlist' target="rightFrame">销售订单查询</a>
          <a href='/reorderlist' target="rightFrame">退货订单查询</a>
        </div>
      </li>

    </ul>
  </div>
  <div class="m-right">
    <iframe src="" id="rightFrame" name="rightFrame"></iframe>
  </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>毕业设计 版权所有</p></div>
<script>navList(12);</script>
</body>
</html>

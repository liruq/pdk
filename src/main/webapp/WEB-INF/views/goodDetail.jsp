<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.pdk.manage.model.bd.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String resourcePath = request.getServletContext().getInitParameter("resource_path") + "/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>商品详情</title>
	<meta http-equiv="mobile-agent" content="format=html5; url=//www.xiaohongshu.com/goods/561608232e0a163e798860db">
	<link rel="stylesheet" href="http://s4.xiaohongshu.com/static/fls/css/shop_web/common.css?s=1452163752">
	<link rel="stylesheet" href="http://s4.xiaohongshu.com/static/fls/css/shop_web/basic.css?s=1449749875">
	<link rel="stylesheet" href="http://s4.xiaohongshu.com/static/fls/css/shop_web/store.css?s=1449850480">
	<link rel="stylesheet" href="http://s4.xiaohongshu.com/static/fls/css/shop_web/note.css?s=1452163752">
<body>
<div class="container">
	<div class="special">
		<div class="good-focus specify">
			<div class="good-img-big">
				<img src="<%=basePath%>${good.img}" title="" alt="">
			</div>
			<div class="good-more">
				<h1 class="good-name">${goods.name}</h1>
				<%--<div class="good-from j_good_from"--%>
					 <%--title="出差、旅行的时候，平时用的瓶瓶罐罐没法全部带走，但带一套江原道旅行护肤套组绝对绰绰有余。按摩卸妆让你皮肤重新自由呼吸，洗面奶洗洗干净以后再来一发美容液、化妆水、保湿霜的全套保养，整个过程简直就是完美。心情好的话再来个面膜spa，第二天醒来绝对水水嫩嫩自己也忍不住多戳两下~小红薯说“正好是换季期间用的，好滋润，感觉皮肤好好，摸上去软软的”喔~">--%>
					<%--出差、旅行的时候，平时用的瓶瓶罐罐没法全部带走，但带一套江原道旅行护肤套组绝对绰绰有余。按摩卸妆让你皮肤重新自由呼吸，洗面奶洗洗干净以后再来一发美容液、化妆水、保湿霜的全套保养，整个过程简直就是完美。心情好的话再来个面膜spa，第二天醒来绝对水水嫩嫩自己也忍不住多戳两下~小红薯说“正好是换季期间用的，好滋润，感觉皮肤好好，摸上去软软的”喔~--%>
				<%--</div>--%>
				<div class="good-price">
					<span class="now j_price_now" data-num="148">¥ ${goods.price}</span>
					<%--<span class="origin j_price_origin" data-num="268">¥ 268</span>--%>
					<%--<span class="discount">(5.5折)</span>--%>
				</div>
				<div class="good-left" style="height: 50px;">&nbsp;</div>

				<div class="good-buy-btn j_buy_btn">购买</div>
				<div class="good-information">
					<div class="title">商品详情</div>
					<div class="sentence">
						${goods.memo}
					</div>
				</div>
				<div class="good-service">商品服务</div>
				<ul class="good-service-list">
					<li>- 好东西</li>
					<li>- 二手正品</li>
					<li>- 由你来购</li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
</body>
</html>


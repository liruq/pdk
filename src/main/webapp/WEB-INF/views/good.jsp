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
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>二手书交易</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />


	<link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.1.0/css/bootstrap-combined.min.css" />
	<!-- Animate.css -->
	<link rel="stylesheet" href="<%=resourcePath%>static/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<%=resourcePath%>static/css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<%=resourcePath%>static/css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="<%=resourcePath%>static/css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="<%=resourcePath%>static/css/style.css">
	<!-- Modernizr JS -->
	<script src="<%=resourcePath%>static/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<%=resourcePath%>static/js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

<div id="fh5co-offcanvass">
	<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">菜单 <i class="icon-cross"></i> </a>
	<h1 class="fh5co-logo"><a class="navbar-brand" href="index.html">二手市场</a></h1>
	<ul>
		<li><a href="index.html">登录</a></li>
		<li><a href="<%=resourcePath%>signIn">注册</a></li>
	</ul>
	<h3 class="fh5co-lead">Connect with us</h3>
	<p class="fh5co-social-icons">
		<a href="#"><i class="icon-twitter"></i></a>
		<a href="#"><i class="icon-facebook"></i></a>
		<a href="#"><i class="icon-instagram"></i></a>
		<a href="#"><i class="icon-dribbble"></i></a>
		<a href="#"><i class="icon-youtube"></i></a>
	</p>
</div>
<header id="fh5co-header" role="banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<a href="#" class="fh5co-menu-btn js-fh5co-menu-btn">Menu <i class="icon-menu"></i></a>
				<a class="navbar-brand" href="<%=basePath%>bd/goods">二手市场</a>
				<div style="width: 20%; float: right">
					<div id="searchbox">
						<form action="<%=basePath%>bd/goods" method="get">
							<div class="input-append" style="padding-right: 42px">
								<input type="text" class="input-block-level" autocomplete="off" autofocus="autofocus" placeholder="搜索" style="height:40px " name="key"/>
								<button type="submit" class="btn btn-primary" style="margin-left: 5px;">
									<i class="icon-search icon-white"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

</header>
<!-- END .header -->

<div id="fh5co-main">
	<div class="container">

		<div class="row">

			<div id="fh5co-board" data-columns>

				<c:forEach var="good" items="${list}" varStatus="status">
					<div class="item">
						<div class="animate-box">
							<a href="<%=basePath%><c:out value="${good.img}"/>" class="image-popup fh5co-board-img"><img src="<%=basePath%><c:out value="${good.img}"/>" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc"><c:out value="${good.memo}"/></div>
							<div class="fh5co-desc"><c:out value="￥${good.price}"/></div>
							<div><a href="<%=basePath%>bd/goodDetail?id=<c:out value="${good.id}"/>" class="fh5co-desc">详情</a></div>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>
</div>


<!-- jQuery -->
<script src="<%=resourcePath%>static/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="<%=resourcePath%>static/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<%=resourcePath%>static/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=resourcePath%>static/js/jquery.waypoints.min.js"></script>
<!-- Magnific Popup -->
<script src="<%=resourcePath%>static/js/jquery.magnific-popup.min.js"></script>
<!-- Salvattore -->
<script src="<%=resourcePath%>static/js/salvattore.min.js"></script>
<!-- Main JS -->
<script src="<%=resourcePath%>static/js/main.js"></script>




</body>
</html>

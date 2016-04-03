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

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />



	<!-- Animate.css -->
	<link rel="stylesheet" href="<%=basePath%>/static/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<%=basePath%>/static/css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<%=basePath%>/static/css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="<%=basePath%>/static/css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="<%=basePath%>/static/css/style.css">
	<!-- Modernizr JS -->
	<script src="<%=basePath%>/static/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<%=basePath%>/static/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div id="fh5co-offcanvass">
		<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">菜单 <i class="icon-cross"></i> </a>
		<h1 class="fh5co-logo"><a class="navbar-brand" href="index.html">文艺二手书</a></h1>
		<ul>
			<li><a href="about.html">登录</a></li>
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
					<a class="navbar-brand" href="index.html">二手书</a>		
				</div>
			</div>
		</div>
	</header>
	<!-- END .header -->

	<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>







        	<!--<div class="item">-->
        		<!--<div class="animate-box">-->
	        		<!--<a href="images/img_2.jpg" class="image-popup fh5co-board-img"><img src="images/img_2.jpg" alt="Free HTML5 Bootstrap template"></a>-->
	        		<!--<div class="fh5co-desc">Veniam voluptatum voluptas tempora debitis harum totam vitae hic quos.</div>-->
        		<!--</div>-->
        	<!--</div>-->




			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_3.jpg" class="image-popup fh5co-board-img"><img src="images/img_3.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Optio commodi quod vitae, vel, officiis similique quaerat odit dicta.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_4.jpg" class="image-popup fh5co-board-img"><img src="images/img_4.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Dolore itaque deserunt sit, at exercitationem delectus, consequuntur quaerat sapiente.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_5.jpg" class="image-popup fh5co-board-img"><img src="images/img_5.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Tempora distinctio inventore, nisi excepturi pariatur tempore sit quasi animi.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_6.jpg" class="image-popup fh5co-board-img"><img src="images/img_6.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Sequi, eaque suscipit accusamus. Necessitatibus libero, unde a nesciunt repellendus!</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_7.jpg" class="image-popup fh5co-board-img"><img src="images/img_7.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Necessitatibus distinctio eos ipsam cum hic temporibus assumenda deleniti, soluta.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_8.jpg" class="image-popup fh5co-board-img"><img src="images/img_8.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Debitis voluptatum est error nulla voluptate eum maiores animi quasi?</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_9.jpg" class="image-popup fh5co-board-img"><img src="images/img_9.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Maxime qui eius quisquam quidem quos unde consectetur accusamus adipisci!</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_21.jpg" class="image-popup fh5co-board-img"><img src="images/img_21.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Deleniti aliquid, accusantium, consectetur harum eligendi vitae quaerat reiciendis sit?</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_10.jpg" class="image-popup fh5co-board-img"><img src="images/img_10.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Incidunt, eaque et. Et odio excepturi, eveniet facilis explicabo assumenda.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_11.jpg" class="image-popup fh5co-board-img"><img src="images/img_11.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Laborum dolores nihil voluptates quas alias distinctio fugiat tempora sit.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_12.jpg" class="image-popup fh5co-board-img"><img src="images/img_12.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Sit, quis nulla amet numquam fugit, in reiciendis laboriosam dolor.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_13.jpg" class="image-popup fh5co-board-img"><img src="images/img_13.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Possimus explicabo voluptatem natus nisi similique ipsa repudiandae? Quibusdam, fuga.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_14.jpg" class="image-popup fh5co-board-img"><img src="images/img_14.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Magni repellendus iusto mollitia, quibusdam facilis incidunt. Sunt, repellat, voluptatem.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_15.jpg" class="image-popup fh5co-board-img"><img src="images/img_15.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Unde iure rerum cupiditate explicabo quam aut vel earum numquam.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_16.jpg" class="image-popup fh5co-board-img"><img src="images/img_16.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Qui nisi error dolorum dolor delectus, alias doloremque perspiciatis nemo.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_18.jpg" class="image-popup fh5co-board-img"><img src="images/img_18.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Neque porro vero cumque natus nam voluptatibus, ratione, commodi labore.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_17.jpg" class="image-popup fh5co-board-img"><img src="images/img_17.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Quisquam quia totam, sit ea maxime sint sed excepturi quod.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_19.jpg" class="image-popup fh5co-board-img"><img src="images/img_19.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Nesciunt non iste ex nemo sapiente eum, provident nam corporis.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_20.jpg" class="image-popup fh5co-board-img"><img src="images/img_20.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Harum repellat labore est cum ipsa, nesciunt neque mollitia adipisci?</div>--%>
				<%--</div>--%>
			<%--</div>--%>

			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_22.jpg" class="image-popup fh5co-board-img"><img src="images/img_22.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Quos repellendus repudiandae debitis reprehenderit cupiditate cumque accusamus exercitationem, harum.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_23.jpg" class="image-popup fh5co-board-img"><img src="images/img_23.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Sunt numquam itaque delectus, dignissimos dolorem obcaecati vel, atque eos.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_24.jpg" class="image-popup fh5co-board-img"><img src="images/img_24.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Adipisci consequuntur ipsa fugit perspiciatis eligendi. Omnis blanditiis, totam placeat.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_25.jpg" class="image-popup fh5co-board-img"><img src="images/img_25.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Quos repellendus repudiandae debitis reprehenderit cupiditate cumque accusamus exercitationem, harum.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_26.jpg" class="image-popup fh5co-board-img"><img src="images/img_26.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Sunt numquam itaque delectus, dignissimos dolorem obcaecati vel, atque eos.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_27.jpg" class="image-popup fh5co-board-img"><img src="images/img_27.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Adipisci consequuntur ipsa fugit perspiciatis eligendi. Omnis blanditiis, totam placeat.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_28.jpg" class="image-popup fh5co-board-img"><img src="images/img_28.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Adipisci consequuntur ipsa fugit perspiciatis eligendi. Omnis blanditiis, totam placeat.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_29.jpg" class="image-popup fh5co-board-img"><img src="images/img_29.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Adipisci consequuntur ipsa fugit perspiciatis eligendi. Omnis blanditiis, totam placeat.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="item">--%>
				<%--<div class="animate-box">--%>
					<%--<a href="images/img_30.jpg" class="image-popup fh5co-board-img"><img src="images/img_30.jpg" alt="Free HTML5 Bootstrap template"></a>--%>
					<%--<div class="fh5co-desc">Adipisci consequuntur ipsa fugit perspiciatis eligendi. Omnis blanditiis, totam placeat.</div>--%>
				<%--</div>--%>
			<%--</div>--%>
        </div>
        </div>
       </div>
	</div>


	<!-- jQuery -->
	<script src="<%=basePath%>/static/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<%=basePath%>/static/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<%=basePath%>/static/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<%=basePath%>/static/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="<%=basePath%>/static/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="<%=basePath%>/static/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="<%=basePath%>/static/js/main.js"></script>
	<script type="text/javascript">
		i = 1; //设置当前页数

		$(function() {
			var totalpage = 6; //总页数，防止超过总页数继续滚动
			var winH = $(window).height(); //页面可视区域高度

			$(window).scroll(function() {
				if (i < totalpage) { // 当滚动的页数小于总页数的时候，继续加载
					var pageH = $(document.body).height();
					var scrollT = $(window).scrollTop(); //滚动条top
					var aa = (pageH - winH - scrollT) / winH;
					if (aa < 0.01) {
						getJson(i)
					}
				} else { //否则显示无数据
					showEmpty();
				}
			});
			getJson(0); //加载第一页
		});
		function getJson(page) {
			$.getJSON("<%=basePath%>bd/goods", {page: i}, function(json) {
				if (json) {
					var str = "";
					$.each(json, function(index, array) {
//						var str = "<div class='per'>";
//						var str = str + "<div class='title'>" + array['id'] + "、" + array['title'] + "</div></div>";
						var str ="<div class='item'>";
						var str =str + "<div class='animate-box'>";
						var str =str + "<a href='#' class='image-popup fh5co-board-img' title='Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?'>" +
								"<img src='<%=basePath%>static/img/"+array['img']+"' alt='Free HTML5 Bootstrap template'>" +
								"</a>";
						var str =str + 	"<div class='fh5co-desc'>"+array['memo']+"</div>";
						var str =str + "</div>";
						var str =str + "</div>";

						$("#fh5co-board").append(str);
					});
					$(".nodata").hide()
				} else {
					showEmpty();
				}
			});
			i++;
		}
		function showEmpty() {
			$(".nodata").show().html("没有更多了。。。");
		}
	</script>
	

	
	</body>
</html>

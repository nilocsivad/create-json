<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/url.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>关于</title>
		<script type="text/javascript">
			var __title__ = "关于";
			var __datat__ = "about";
		</script>

		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="Keywords" content="" />
		<meta name="Description" content="" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<link rel="stylesheet" type="text/css" href="${URL }/assets/normalize.css" />

		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="${URL }/assets/icon.32x32.png">

		<!--[if lt IE 9]> 
		<script type="text/javascript"> 
			var e=("abbr,article,aside,audio,canvas,datalist,details,figure,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,time,video").split(','); 
			for(var i=0;i<e .length;i++){ 
				document.createElement(e[i]); 
			} 
		</script> 
		<![endif]-->
	</head>

	<body>

		<header id="header" class="header">
		
			<%@ include file="header.jsp" %>
			
		</header>

		<div class="support wrap">
			<div class="container">
				<div class="main row">
					<div class="content col-xs-12" style="min-height: 577px;">
						<ol class="breadcrumb">
							<li><i class="fa fa-map-marker"></i> <a href="index.html">首页</a></li>
							<li class="active">关于我们</li>
						</ol>
						<h1 class="entry-title">关于我们</h1>
						<div class="entry-content">
							<h3>关于iam-vip.com网站</h3>
							<p><a href="index.html">www.iam-vip.com</a></p>
						</div>
						<div style="min-height: 50px;"></div>
						<section class="feature section row loaded">
							<div class="fea col-xs-4 text-center">
								<i class="fa fa-users fea-icon-1"></i>
								<h3 class="fea-item-title">专业开发团队</h3>
								<p>我们的团队成员均来自于互联网行业，并且有着多年的开发经验，熟悉网站的开发流程，对于WordPress网站设计开发有着丰富的经验。</p>
							</div>
							<div class="fea fea-2 col-xs-4 text-center">
								<i class="fa fa-sliders fea-icon-2"></i>
								<h3 class="fea-item-title">便捷设置管理</h3>
								<p>独立自主开发的WordPress后台设置管理面板，可以方便快捷的设置你的网站，即使不懂代码也可以随心所欲的修改主题自定义选项。</p>
							</div>
							<div class="fea fea-6 col-xs-4 text-center">
								<i class="fa fa-cloud-upload fea-icon-6"></i>
								<h3 class="fea-item-title">永久免费升级</h3>
								<p>购买任意主题都可以获得永久更新服务，第一时间兼容最新版WP。当主题有更新时，用户可以立即获得最新的版本，让您的网站永远稳定运行。</p>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>

	</body>

</html>
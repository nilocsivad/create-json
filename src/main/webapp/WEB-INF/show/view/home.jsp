<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/url.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>JSON</title>

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

	<body class="home">

		<header id="header" class="header">
			<div class="container clearfix">
				<div class="logo pull-left">
					<a href="${URL }"><img src="${URL }/assets/images/logo-w.png" alt="JSON"></a>
				</div>
				<ul class="menu pull-left">
					<li class="active"><a href="${URL }/home/to/index">首页</a> </li>
					<li><a href="${URL }/home/to/index#problem">常见问题</a> </li>
					<li><a href="${URL }/home/to/index#action">最新动态</a> </li>
					<li><a href="${URL }/home/to/about">关于我们</a> </li>
				</ul>
				<ul class="menu  pull-right" id="j-user">
					<li class="login"><a href="${URL }/member/to/login"><i class="fa fa-sign-in"></i> 登录</a> </li>
					<li class="register"><a href="${URL }/member/to/register"><i class="fa fa-plus-square"></i> 注册</a></li>
				</ul>
			</div>
			<div class="container text-center">
				<div class="typing-wrap">
					<div id="j-typing-text" class="typing-text">
						<p>WPCOM上线优惠ING^2000</p>
						<p>国内顶尖WordPress开发团队倾情打造^2000</p>
						<p>5年WordPress开发经验，专业的WordPress网站建设团队^2000</p>
						<p>Made with <span class="faicon">&#xf004;</span> by WPCOM^5000</p>
					</div>
					<div id="j-typing" class="typing"></div>
				</div>
				<a class="btn btn-lg btn-default btn-view" href="">浏览案例</a>
			</div>
			<div class="container ">
				<div style="min-height:50px;"></div>
				<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
					<img class="center-block" src="${URL }/assets/images/show-rule.png" />
				</div>
				<div class="clearfix visible-xs-block"></div>
			</div>
		</header>

		<div class="container">
			<section class="feature section row loaded">
				<h2 class="text-center fea-title">为什么选择我们？</h2>
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
			<!-- /.feature -->
		</div>

		<div class="news section">
			<div class="container no-padding">
				<div class="col-xs-6">
					<h3 id="problem" class="news-title"><a class="pull-right" href="/help" title="常见问题" target="_blank">更多&raquo;</a>常见问题</h3>
					<ul class="news-list">
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="常见问题">常见问题</a></li>
					</ul>
				</div>
				<div class="col-xs-6">
					<h3 id="action" class="news-title"><a class="pull-right" href="/news" title="最新动态" target="_blank">更多&raquo;</a>最新动态</h3>
					<ul class="news-list">
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
						<li class="news-item"><span class="pull-right">2016-02-16</span><a target="_blank" href="" title="最新动态">最新动态</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="welcome section">
			<div class="container">
				<p>专注于高效APP开发</p>
				<p>致力于各行各业提供JSON自定义格式数据服务</p>
				<c:if test="${customer eq null }">
				<div class="btn-inner">
					<a class="btn btn-primary btn-login" href="${URL }/member/to/register">马上注册</a>
					<a class="btn btn-danger btn-login" href="${URL }/member/to/login">立即登录</a>
				</div>
				</c:if>
			</div>
		</div>

		<footer class="footer">
			<div class="copyright clearfix">
				<div class="container">
					<p class="pull-left">Copyright &copy; 2010-2016 www.iam-vip.com 版权所有</p>
					<p class="pull-right">
						<a href="${URL }/home/to/about">关于我们</a> /
						<a href="/contact">联系我们</a> /
						<a href="/term">服务条款</a> /
						<a href="/links">友情链接</a> /
						<a href="/sitemap.xml" target="_blank">网站地图</a>
					</p>
				</div>
			</div>
		</footer>
		<!-- /.footer -->

	</body>

	<script src="${URL }/assets/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		// $(function() {});
	</script>

</html>
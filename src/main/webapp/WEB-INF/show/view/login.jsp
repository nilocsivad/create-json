<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/url.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>登录系统</title>

		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="Keywords" content="" />
		<meta name="Description" content="" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<link rel="stylesheet" type="text/css" href="${URL }/assets/normalize.css" />
		<link rel="stylesheet" type="text/css" href="${URL }/assets/extra.css" />

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
			<div class="container clearfix">
				<div class="logo pull-left">
					<a href="${URL }"><img src="${URL }/assets/images/logo-w.png" alt="JSON"></a>
				</div>
				<ul class="menu pull-left">
					<li><a href="${URL }/home/to/index">首页</a> </li>
					<c:if test="${customer ne null }">
					<li><a href="${URL }/home/to/about">关于我们</a> </li>
					</c:if>
					<li><a href="${URL }/home/to/index#problem">常见问题</a> </li>
					<li><a href="${URL }/home/to/index#action">最新动态</a> </li>
					<li><a href="${URL }/home/to/about">关于我们</a> </li>
				</ul>
				<c:if test="${customer eq null }">
				<ul class="menu  pull-right" id="j-user">
					<li class="login"><a href="${URL }/member/to/login"><i class="fa fa-sign-in"></i> 登录</a> </li>
					<li class="register"><a href="${URL }/member/to/register"><i class="fa fa-plus-square"></i> 注册</a></li>
				</ul>
				</c:if>
			</div>
		</header>

		<div class="support wrap">
			<div class="container">
				<div class="main row">
					<div class="content col-xs-12" style="min-height: 577px;">

						<div class="page-header center-block">
							<h1>登录系统 <small> Welcome</small></h1>
						</div>

						<form id="login-form" class="form-horizontal col-xs-12 col-sm-offset-2 col-sm-9" action="${URL }/member/do/login" method="post">
							<c:if test="${message ne null }">
							<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6 text-center text-danger txt-20">${message }</div>
							<p class="h-30">&nbsp;</p>
							<div class="clearfix"></div>
							</c:if>
							<div class="form-group">
								<label for="ipt-4-email" class="col-xs-3 col-sm-2 control-label sr-only">邮箱</label>
								<div class="col-xs-9 col-sm-6">
									<input name="lname" type="email" class="form-control" id="ipt-4-email" placeholder="邮箱">
								</div>
								<div class="col-xs-12 col-sm-4 form-control-static text-danger hide"><div class="col-xs-offset-3"></div>邮箱不能为空,需填写正确格式</div>
							</div>
							<div class="form-group">
								<label for="ipt-4-pwd" class="col-xs-3 col-sm-2 control-label sr-only">密码</label>
								<div class="col-xs-9 col-sm-6">
									<input name="lpwd" type="password" class="form-control" id="ipt-4-pwd" placeholder="密码">
								</div>
								<div class="col-xs-12 col-sm-4 form-control-static text-danger hide"><div class="col-xs-offset-3"></div>密码不能为空,不能少于8位</div>
							</div>
							<div class="form-group">
								<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
									<a class="btn btn-login btn-primary btn-block" href="javascript:valid2login()" style="margin: 0;">登录</a>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>

		<footer class="footer">
			<div class="copyright clearfix">
				<div class="container">
					<p class="pull-left">Copyright &copy; 2010-2016 www.iam-vip.com 版权所有</p>
					<p class="pull-right">
						<a href="about.html">关于我们</a> /
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
		function _error(show, domID) {
			if (show) {
				$(domID).focus().parent().parent(".form-group").addClass("has-error").find(".text-danger").removeClass("hide");
			}else{
				$(domID).parent().parent(".form-group").removeClass("has-error").find(".text-danger").addClass("hide");
			}
		}

		function valid2login() {
			// 邮箱验证
			var domID = "#ipt-4-email";
			var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			var value = $(domID).val();
			if (value == "" || !reg.test(value)) {
				_error(true, domID);
				return;
			} else {
				_error(false, domID);
			}
			// 密码验证
			domID = "#ipt-4-pwd";
			value = $(domID).val();
			if (value == "" || value.length < 8) {
				_error(true, domID);
				return;
			} else {
				_error(false, domID);
			}
			// 提交表单
			document.getElementById("login-form").submit();
		}
		// $(function() {});
	</script>

</html>
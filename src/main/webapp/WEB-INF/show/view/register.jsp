<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/url.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>注册</title>
		<script type="text/javascript">
			var __title__ = "注册";
		</script>

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
		
			<%@ include file="header.jsp" %>
			
		</header>

		<div class="support wrap">
			<div class="container">
				<div class="main row">
					<div class="content col-xs-12" style="min-height: 577px;">

						<div class="page-header">
							<h1>注册成为我们的用户 <small> Welcome</small></h1>
						</div>

						<form id="reg-form" class="form-horizontal col-xs-12 col-sm-9 col-md-8 pull-left" action="${URL }/member/do/register" method="post">
							<c:if test="${message ne null }">
							<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6 text-center text-danger txt-20">${message }</div>
							<p class="h-30">&nbsp;</p>
							<div class="clearfix"></div>
							</c:if>
							<div class="form-group">
								<label for="ipt-4-name" class="col-xs-3 col-sm-2 control-label">姓名</label>
								<div class="col-xs-9 col-sm-6">
									<input name="uname" type="text" class="form-control" id="ipt-4-name" placeholder="姓名" value="${uname ne null ? uname : '' }" />
								</div>
								<div class="col-xs-12 col-sm-4 form-control-static text-danger hide"><div class="col-xs-offset-3"></div>姓名不能为空,不能少于两个字</div>
							</div>
							<div class="form-group">
								<label for="ipt-4-email" class="col-xs-3 col-sm-2 control-label">邮箱</label>
								<div class="col-xs-9 col-sm-6">
									<input name="lname" type="email" class="form-control" id="ipt-4-email" placeholder="邮箱" value="${lname ne null ? lname : '' }" />
								</div>
								<div class="col-xs-12 col-sm-4 form-control-static text-danger hide"><div class="col-xs-offset-3"></div>邮箱不能为空,需填写正确格式</div>
							</div>
							<div class="form-group">
								<label for="ipt-4-pwd" class="col-xs-3 col-sm-2 control-label">密码</label>
								<div class="col-xs-9 col-sm-6">
									<input name="lpwd" type="password" class="form-control" id="ipt-4-pwd" placeholder="密码" />
								</div>
								<div class="col-xs-12 col-sm-4 form-control-static text-danger hide"><div class="col-xs-offset-3"></div>密码不能为空,不能少于8位</div>
							</div>
							<div class="form-group">
								<label for="ipt-4-repwd" class="col-xs-3 col-sm-2 control-label">重复密码</label>
								<div class="col-xs-9 col-sm-6">
									<input type="password" class="form-control" id="ipt-4-repwd" placeholder="重复密码" />
								</div>
								<div class="col-xs-12 col-sm-4 form-control-static text-danger hide"><div class="col-xs-offset-3"></div>两次密码不一致</div>
							</div>
							<div class="form-group">
								<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
									<a class="btn btn-login btn-success btn-block" href="javascript:valid2register()" style="margin: 0;">注册</a>
								</div>
							</div>
						</form>

						<div class="pull-right col-xs-12 col-sm-3">
							<p class="text-success bef-txt">1.注册用户可以为您提供开发App中所需要的固定格式JSON数据，实现无后台亦可开发。</p>
							<p class="text-success bef-txt">2.可以为您保留所有创建过的JSON数据格式，可随时调用。</p>
							<p class="text-success bef-txt">3.如您在使用过程中有什么建议可随时向我们反馈。</p>
						</div>

						<div class="clearfix"></div>

					</div>
				</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>
	
		<script type="text/javascript">
			function _error(show, domID) {
				if (show) {
					$(domID).focus().parent().parent(".form-group").addClass("has-error").find(".text-danger").removeClass("hide");
				}else{
					$(domID).parent().parent(".form-group").removeClass("has-error").find(".text-danger").addClass("hide");
				}
			}
	
			function valid2register() {
				// 姓名验证
				var domID = "#ipt-4-name";
				var value = $(domID).val();
				if (value == "" || value.length < 2) {
					_error(true, domID);
					return;
				} else {
					_error(false, domID);
				}
				// 邮箱验证
				domID = "#ipt-4-email";
				var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
				value = $(domID).val();
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
				// 重复密码验证
				domID = "#ipt-4-repwd";
				var value2 = $(domID).val();
				if (value != value2) {
					_error(true, domID);
					return;
				} else {
					_error(false, domID);
				}
				// 提交表单
				document.getElementById("reg-form").submit();
			}
			// $(function() {});
		</script>

	</body>

</html>
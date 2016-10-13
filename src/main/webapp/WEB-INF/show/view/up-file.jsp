<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/url.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>上传模版</title>
		<script type="text/javascript">
			var __title__ = "上传模版";
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
							<h3>选择 JSON 模版 XML 文件</h3>
						</div>

						<form id="template-form" class="form-horizontal col-xs-12 col-sm-offset-2 col-sm-9" action="${URL }/member/do/upload/templete/xml" method="post" enctype="multipart/form-data">
							<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
								<label for="ipt-4-url" class="control-label">请求后缀(/get/user/list?page=10&;size=30)</label>
							</div>
							<p class="h-30">&nbsp;</p>
							<div class="clearfix"></div>
							<div class="form-group">
								<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
									<input type="url" class="form-control" id="ipt-4-url" />
								</div>
							</div>
							<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
								<label for="ipt-4-fxml" class="control-label">选择 JSON 模版 XML 文件</label>
							</div>
							<p class="h-30">&nbsp;</p>
							<div class="clearfix"></div>
							<div class="form-group">
								<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
									<input name="fxml" type="file" class="form-control" id="ipt-4-fxml" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-offset-3 col-xs-9 col-sm-offset-2 col-sm-6">
									<a class="btn btn-login btn-primary btn-block" href="javascript:valid2login()" style="margin: 0;">上传</a>
								</div>
							</div>
						</form>

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
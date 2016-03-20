<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		
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

		<script src="${URL }/assets/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function() {
				document.title = __title__;
				if (undefined == __datat__)
					$("#top-menu").find("li[data-t='" + __datet__ + "']").addClass("active");
			});
		</script>


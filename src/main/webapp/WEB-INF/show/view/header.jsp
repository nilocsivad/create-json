<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
			<div class="container clearfix">
				<div class="logo pull-left">
					<a href="${URL }"><img src="${URL }/assets/images/logo-w.png" alt="JSON"></a>
				</div>
				<ul id="top-menu" class="menu pull-left">
					<li data-t="home"><a href="${URL }/home/to/index">首页</a> </li>
					<%-- <li><a href="${URL }/home/to/index#problem">常见问题</a> </li> 
 						 <li><a href="${URL }/home/to/index#action">最新动态</a> </li> --%>
					<li data-t="about"><a href="${URL }/home/to/about">关于我们</a> </li>
				</ul>
				<ul class="menu  pull-right" id="j-user">
					<c:if test="${customer eq null }">
					<li class="login"><a href="${URL }/member/to/login"><i class="fa fa-sign-in"></i> 登录</a> </li>
					<li class="register"><a href="${URL }/member/to/register"><i class="fa fa-plus-square"></i> 注册</a></li>
					</c:if>
					<c:if test="${customer ne null }">
					<li class="login"><a href="${URL }/member/to/my/thing"><i class="fa fa-info-circle"></i> ${customer.uname }</a> </li>
					<li class="register"><a href="${URL }/member/to/out/of/system"><i class="fa fa-close"></i> 退出</a></li>
					</c:if>
				</ul>
			</div>

			
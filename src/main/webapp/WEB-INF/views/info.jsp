<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forum Hu Cau</title>
	<link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet">
	<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet">
	<link href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />" rel="stylesheet">
</head>
<body>
	  <div class="container">
	    <div class="row">
	      <div class="logo col-md-6 col-sm-6 col-xs-12"><h1>Forum Hu Cau</h1></div>
	      <div class="search col-md-6 col-sm-6 col-xs-12 text-right">
	        <form method="get" action="#">
	          <input type="text" placeholder="Nhập từ khóa tìm kiếm" id="q" name="q" value="">
	          <input type="submit" value="Tìm Kiếm">
	        </form>
	      </div>
	      <div class="clearfix"></div>
	    </div>
	    <div class="header-menu">
	      <!-- Menu do Bootstrap cung cấp có hỗ trợ menu trên di động -->
		<nav class="navbar navbar-default navbar-brand-hidden affix-top">
		  <div class="container-fluid">
		    <div class="navbar-header"> <!-- visible-xs -->
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-items" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="/forum/"><i class="fa fa-gg"></i> Forum Hu Cau</a>
		    </div>
		    <div class="collapse navbar-collapse" id="navbar-items">
		      <ul class="nav navbar-nav">
		        <li role="presentation" class="">
		          <a href="/forum/"><i class="fa fa-home"></i> Trang Chủ</a>
		        </li>
		        <li class="dropdown">
			        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-sitemap"></i> Chuyên Mục
			        <span class="caret"></span></a>
			        <ul class="dropdown-menu">
						<li>
							<a href="/forum/category/" title="Cộng Đồng"><i class="fa fa-comments-o"></i> <b>Cộng Đồng</b></a>
						</li>
						<li>
							<a href="/forum/category/" title="Cộng Đồng Pascal"><i class="fa fa-comments-o"></i> <b>Cộng Đồng Pascal</b></a>
						</li>
						<li>
							<a href="/forum/category/" title="Thảo luận Facebook"><i class="fa fa-comments-o"></i> <b>Thảo luận Facebook</b></a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="">
		          <a href="#"><i class="fa fa-comments-o"></i> Tin Nhắn </a>
		        </li>
				<li role="presentation" class="">
		          <a href="#"><i class="fa fa-bell"></i> Thông báo  </a>
		        </li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		      <c:choose>
		      	<c:when test="${username != null}">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle profile-image" data-toggle="dropdown">
						<b>${username}</b> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/forum/info/"><i class="fa fa-user"></i> Account</a></li>
							<li class="divider"></li>
							<li><a href="/forum/exit/"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
						</ul>
					</li>
		      	</c:when>
		      	<c:otherwise>
		      		<li><a href="/forum/register/"><span class="fa fa-sign-in"></span> Đăng kí</a></li>
					<li><a href="/forum/login/"><span class="fa fa-user-plus"></span> Đăng Nhập</a></li>
		      	</c:otherwise>
		      </c:choose>
			  </ul>
		    </div>
		  </div>
		</nav>
	      <!-- End Menu Bootstrap -->
	    </div>
	</div>
	<div id="wrapper">
	  <div class="container bg-white">
	    <div class="row">
	    	<div class="col-md-12">
	    		<div class="phdr">
					<b>Admin</b>
				</div>
				<div class="list-group">
					<div class="list-group-item"><i class="fa fa-address-book-o"></i> Họ tên: Vũ Tùng Duy</div>
					<div class="list-group-item"><i class="fa fa-gift"></i> Ngày sinh: </div>
					<div class="list-group-item"><i class="fa fa-globe"></i> Thành phố: </div>
					<div class="list-group-item"><i class="fa fa-road"></i> Giới thiệu: <br>1</div>
					<div class="list-group-item"><i class="fa fa-id-badge"></i> Liên hệ số: +1282******</div>
					<div class="list-group-item"><i class="fa fa-chain-broken"></i> Website: sieuvui.me</div>
					<div class="list-group-item"><a class="btn btn-info" style="color:#fff" href="profile.php?act=friends&amp;do=add&amp;id=100006979"><i class="fa fa-user-plus"></i> Friends</a>&nbsp;<a class="btn btn-danger" style="color:#fff" href="../mail/index.php?act=ignor&amp;id=100006979&amp;add"><i class="fa fa-user-times"></i> Chặn</a></div>
					<div class="list-group-item"><a style="color: #444;" href="/account/profile.php?act=friends&amp;user=100006979"><i class="fa fa-users"></i> Bạn bè</a> (0)</div>
					<div class="list-group-item"><a style="color: #444;" href="/account/profile.php?act=activity&amp;mod=topic&amp;user=100006979"><i class="fa fa-book"></i> Tìm kiếm tất cả chủ đề của <b>VuTungDuy</b></a> </div>
				</div>
			</div>
	  </div>
	</div>
	<footer class="container">
	    <div class="footer-info text-center">
	      Forum Hu Cau
	    </div>
	</footer>
	<script src='<c:url value="/resources/js/jquery-3.3.1.min.js" />'></script>
	<script src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
</body>
</html>
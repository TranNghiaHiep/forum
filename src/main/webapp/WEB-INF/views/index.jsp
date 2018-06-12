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
							<a href="./category.html" title="Cộng Đồng"><i class="fa fa-comments-o"></i> <b>Cộng Đồng</b></a>
						</li>
						<li>
							<a href="./category.html" title="Cộng Đồng Pascal"><i class="fa fa-comments-o"></i> <b>Cộng Đồng Pascal</b></a>
						</li>
						<li>
							<a href="./category.html" title="Thảo luận Facebook"><i class="fa fa-comments-o"></i> <b>Thảo luận Facebook</b></a>
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
				<li><a href="/forum/register"><span class="fa fa-sign-in"></span> Đăng kí</a></li>
				<li><a href="/forum/login"><span class="fa fa-user-plus"></span> Đăng Nhập</a></li>
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
	      <div class="content col-md-9">
			<div class="slider"><img src="http://placehold.it/850x250"></div>
			<div class="phdr">
				<i class="fa fa-tags"></i> <b>Bài Viết Mới</b><a href="./create.html" class="badge pull-right" title="Gửi Bài Mới">Viết Bài Mới</a>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="menu-home-tom">
						<table class="table table-striped">
							<thead>
								<tr>
									<th width="55%">Tiêu đề</th><th width="20%" class="hidden-xs">Chuyên Mục</th><th width="25%" class="text-right hidden-xs"> Thống kê</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="media">
											<div class="media-body">
												<h4 class="media-heading">  <a style="color: #c51c1c;" href="./post.html"><i class="fa fa-rocket"></i> <b>Update Cho Thành Viên VIP</b></a></h4><p class="text-muted" style="margin: 0 0 0 2px"> Đăng bởi : <span><span style="color:#ff0000"><b style="text-decoration: bolder;color : #ff0000;text-shadow: 0 0 6px #ff000070;">Admin</b></span></span>&nbsp;5 ngày trước</p>
											</div>
										</div>
									</td>
									<td class="hidden-xs">
										<a href="#"><span style="background-color: #7db95c;border-radius: 3px;color: #FFFFFF;font-size: 11.844px;font-weight: bold;line-height: 14px;padding: 5px 8px 5px;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);vertical-align: baseline;white-space: nowrap;"><i class="fa fa-gavel"></i> Chủ Đề Sticked </span></a>
									</td>
									<td class="text-right hidden-xs"><span><i class="fa fa-thumbs-up" style="color: #FFA631"></i> 8 Lượt thích</span><br><span><i class="fa fa-comments" style="color: #C3272B"></i> 24 Bình Luận</span>
									</td>
								</tr>
								<tr>
									<td>
										<div class="media">
											<div class="media-body">
												<h4 class="media-heading">  <a style="color: #c51c1c;" href="./post.html.html"><i class="fa fa-rocket"></i> <b>Update Cho Thành Viên VIP</b></a></h4><p class="text-muted" style="margin: 0 0 0 2px"> Đăng bởi : <span><span style="color:#ff0000"><b style="text-decoration: bolder;color : #ff0000;text-shadow: 0 0 6px #ff000070;">Admin</b></span></span>&nbsp;5 ngày trước</p>
											</div>
										</div>
									</td>
									<td class="hidden-xs">
										<a href="#"><span style="background-color: #7db95c;border-radius: 3px;color: #FFFFFF;font-size: 11.844px;font-weight: bold;line-height: 14px;padding: 5px 8px 5px;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);vertical-align: baseline;white-space: nowrap;"><i class="fa fa-gavel"></i> Chủ Đề Sticked </span></a>
									</td>
									<td class="text-right hidden-xs"><span><i class="fa fa-thumbs-up" style="color: #FFA631"></i> 8 Lượt thích</span><br><span><i class="fa fa-comments" style="color: #C3272B"></i> 24 Bình Luận</span>
									</td>
								</tr>
								<tr>
									<td>
										<div class="media">
											<div class="media-body">
												<h4 class="media-heading">  <a style="color: #c51c1c;" href="./post.html.html"><i class="fa fa-rocket"></i> <b>Update Cho Thành Viên VIP</b></a></h4><p class="text-muted" style="margin: 0 0 0 2px"> Đăng bởi : <span><span style="color:#ff0000"><b style="text-decoration: bolder;color : #ff0000;text-shadow: 0 0 6px #ff000070;">Admin</b></span></span>&nbsp;5 ngày trước</p>
											</div>
										</div>
									</td>
									<td class="hidden-xs">
										<a href="#"><span style="background-color: #7db95c;border-radius: 3px;color: #FFFFFF;font-size: 11.844px;font-weight: bold;line-height: 14px;padding: 5px 8px 5px;text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);vertical-align: baseline;white-space: nowrap;"><i class="fa fa-gavel"></i> Chủ Đề Sticked </span></a>
									</td>
									<td class="text-right hidden-xs"><span><i class="fa fa-thumbs-up" style="color: #FFA631"></i> 8 Lượt thích</span><br><span><i class="fa fa-comments" style="color: #C3272B"></i> 24 Bình Luận</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="menu">
						<div class="row">
							<center><ul class="pagination">  <li class="active"><a>1</a></li> <li><a class="pagenav" href="index.php?page=2">2</a></li> <li><a class="pagenav" href="index.php?page=3">3</a></li> <li><a>...</a></li> <li><a class="pagenav" href="index.php?page=978">978</a></li> <li><a class="pagenav" href="index.php?page=2">&gt;&gt;</a></li> </ul></center>
						</div>
					</div>
				</div>
			</div>
	      </div>

	      <div class="col-md-3">
	      	<div class="phdr"><i class="fa fa-list-alt"></i> <b>Chuyên Mục</b></div>
	      	<div class="menu">
	      		<div class="list-group-item">
	      			<i class="fa fa-comments-o"></i> &nbsp;<a href="./category.html" title="Cộng Đồng"><b>Cộng Đồng</b></a>
	      		</div>
	      		<div class="list-group-item">
	      			<i class="fa fa-comments-o"></i> &nbsp;<a href="./category.html" title="Cộng Đồng Pascal"><b>Cộng Đồng Pascal</b></a>
	      		</div>
	      		<div class="list-group-item">
	      			<i class="fa fa-comments-o"></i> &nbsp;<a href="./category.html" title="Ban Quản Trị"><b>Cộng đồng Facebook</b></a>
	      		</div>
	      	</div>
	      	<div class="phdr"><i class="fa fa-rss-square"></i> Thống kê Diễn Đàn</div>
	      	<div class="list1">
	      		<div class="list-group-item">
	      			<i class="fa fa-check-square-o"></i> Số thành viên: <span class="badge" style="float:right">4518</span></div><div class="list-group-item"><i class="fa fa-check-square-o"></i> Số bài gửi : <span class="badge" style="float:right">9798</span></div><div class="list-group-item"><i class="fa fa-check-square-o"></i> Tổng SCoin : <span class="badge" style="float:right">521,149</span></div><div class="list-group-item"><i class="fa fa-check-square-o"></i> Số Tệp Tin : <span class="badge" style="float:right">199</span></div><div class="list-group-item"><i class="fa fa-check-square-o"></i> Tổng Dung Lượng : <span class="badge" style="float:right">578.82 MB</span>
	      		</div>
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
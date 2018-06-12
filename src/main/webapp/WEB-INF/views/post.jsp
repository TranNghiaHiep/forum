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
					<i class="fa fa-comments-o"></i> <b>Cộng đồng</b>
				</div>
	    		<div class="topmenu">
	    			<div class="row">
	    				<center><ul class="pagination">  <li class="active"><a>1</a></li> <li><a class="pagenav" href="index.php?id=115439&amp;page=2">2</a></li> <li><a class="pagenav" href="index.php?id=115439&amp;page=3">3</a></li> <li><a class="pagenav" href="index.php?id=115439&amp;page=2">&gt;&gt;</a></li> </ul></center>
	    			</div>
	    		</div>
	    		<div class="phdr">
					<i class="fa fa-clock-o"></i> Đăng ngày: 20/06/2018 12:00
				</div>
				<div class="list2">
					<table width="100%" style="padding: 0px;">
						<tbody>
							<tr>
								<td style="float: left;width: 160px">
									<center><b><a href="./info.html"><b><span style="color:#ff0000"><b style="text-decoration: bolder;color : #ff0000;text-shadow: 0 0 6px #ff000070;">Admin</b></span></b></a></b> <div class="tomTitle">Sáng Lập Viên</div><span class="status"><font color="red"><b> ♥♥♥♥♥♥♥♥ </b></font></span></center>
								</td>
								<td width="1200" style="max-width: 800px">
									<div class="v4-tom-content">
										<div style="min-height: 192px;">Xin chào,<br>VIP Member đã xuất hiện ở V4U từ lâu với mục đính "góp phần" duy trì V4U. <br>Đương nhiên, đây là chức năng không bắt buộc, không là VIP vẫn được hỗ trợ bình thường.<br>Update 12/4/2018:<br>+ Màu nick đặc biệt hơn Normal 1 tí thôi.<br>+ Có icon VIP trước nick nè &lt;3 <a href="https://vina4u.vn/img.php?img=https://v4u.vn/images/vip.png" title="Diễn Đàn WapMaster Vina4u.PRO"><center><img itemprop="images" src="https://v4u.vn/images/vip.png" border="0" style="max-width:80%; height: auto;display: block; margin-left: auto; margin-right: auto;margin-bottom: 5px;" target="_blank"></center></a><br>+ Cộng 2,000 VinaCoin / 1 Ngày.<br><br>Đang cập nhật thêm.....<br><br>Thân.
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="phdr">
					<i class="fa fa-clock-o"></i> Đăng ngày: 20/06/2018 12:00
				</div>
				<div class="list2">
					<table width="100%" style="padding: 0px;">
						<tbody>
							<tr>
								<td style="float: left;width: 160px">
									<center><b><a href="./info.html"><b><span style="color:#ff0000"><b style="text-decoration: bolder;color : #ff0000;text-shadow: 0 0 6px #ff000070;">Admin</b></span></b></a></b> <div class="tomTitle">Sáng Lập Viên</div><span class="status"><font color="red"><b> ♥♥♥♥♥♥♥♥ </b></font></span></center>
								</td>
								<td width="1200" style="max-width: 800px">
									<div class="v4-tom-content">
										<div style="min-height: 192px;">Xin chào,<br>VIP Member đã xuất hiện ở V4U từ lâu với mục đính "góp phần" duy trì V4U. <br>Đương nhiên, đây là chức năng không bắt buộc, không là VIP vẫn được hỗ trợ bình thường.<br>Update 12/4/2018:<br>+ Màu nick đặc biệt hơn Normal 1 tí thôi.<br>+ Có icon VIP trước nick nè &lt;3 <a href="https://vina4u.vn/img.php?img=https://v4u.vn/images/vip.png" title="Diễn Đàn WapMaster Vina4u.PRO"><center><img itemprop="images" src="https://v4u.vn/images/vip.png" border="0" style="max-width:80%; height: auto;display: block; margin-left: auto; margin-right: auto;margin-bottom: 5px;" target="_blank"></center></a><br>+ Cộng 2,000 VinaCoin / 1 Ngày.<br><br>Đang cập nhật thêm.....<br><br>Thân.
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="phdr"><i class="fa fa-comments"></i> Bình luận bài viết </div>
				<p></p>
				<form>
					<textarea class="form-control" rows="3" name="msg"></textarea>
					<p></p>
					<input type="file" name="fileToUpload" id="fileToUpload">
					<p></p>
					<p><input type="submit" name="submit" value="Viết" style="width: 107px; cursor: pointer;"><input type="hidden" name="token" value="96139"></p>
				</form>
				<div class="phdr"><a id="down"></a><a href="#up"><img src="https://vina4u.vn/images/up.png" alt="" class=""></a>&nbsp;&nbsp;Tổng số: 24 Bình luận</div>
				<div class="topmenu">
					<div class="row">
						<center><ul class="pagination">  <li class="active"><a>1</a></li> <li><a class="pagenav" href="index.php?id=115439&amp;page=2">2</a></li> <li><a class="pagenav" href="index.php?id=115439&amp;page=3">3</a></li> <li><a class="pagenav" href="index.php?id=115439&amp;page=2">&gt;&gt;</a></li> </ul>
						</center>
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
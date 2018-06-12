<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/beyond.min.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/animate.min.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/form.css' />" rel="stylesheet">
</head>
<body>
	<header>
		<div class="container">
			<h1><a href="/forum/">Forum Hu Cau</a></h1>
		</div>
	</header>
    <form method="post" action="">
        <div class="login-container animated fadeInDown">
            <div class="loginbox bg-white">
                <div class="loginbox-title" style="font-family:sans-serif; "></div>
                <div class="loginbox-social">
                    <h1>ĐĂNG NHẬP</h1>
                </div>
                <div class="loginbox-or">
                    <div class="or-line"></div>
                    <div class="or">-*-</div>
                </div>

                <div class="loginbox-textbox">
                    <input type="text" class="form-control" required placeholder="Tên đăng nhập" name="username" id="username" />
                </div>
                <div class="loginbox-textbox">
                    <input type="password" class="form-control" required placeholder="Mật khẩu" name="password" id="password" onkeypress="searchKeyPress(event);" />
                </div>
                

                <div class="loginbox-forgot">
                    <span style="color:red">
                    </span>
                </div>
                <div class="loginbox-submit">
                    <input type="submit" class="btn-submit btn-block" value="Đăng nhập" />
                </div>
				<div>
					<center><a href="/forum/forgot/">Quên mật khẩu?</a>, <a href="/forum/register/">Đăng ký</a>.</center>
				</div>
            </div>
        </div>
    </form>
</body>
</html>
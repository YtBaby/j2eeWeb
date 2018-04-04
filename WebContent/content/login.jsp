<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"></base>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<script>
	$(function(){
	    $("a").addClass("btn btn-default btn-xs");
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
</head>
<body>
	<div class="container">
	    <div class="row">
	        <div class="col-md-offset-3 col-md-6">
	            <form action="login" method="post" class="form-horizontal">
	                <span class="heading">用户登录</span>
	                <div class="form-group">
	                    <input type="text" class="form-control" placeholder="用户名" name="name">
	                    <i class="glyphicon glyphicon-user"></i>
	                </div>
	                <div class="form-group help">
	                    <input type="password" class="form-control" placeholder="密　码" name="password">
	                    <i class="glyphicon glyphicon-lock"></i>
	                </div>
	                <div class="form-group">
	                    <div class="main-checkbox">
	                        <input type="checkbox" value="None" name="check"/>
	                        <label for="checkbox1"></label>
	                    </div>
	                    <span class="text">Remember me</span>
	                    <button type="submit" class="btn btn-default">登录</button>
	                </div>
	            </form>
	        </div>
	    </div>
	</div>
</body>
</html>
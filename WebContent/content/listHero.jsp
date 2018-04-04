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
<base href="<%=basePath%>"></base>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script>
	$(function(){
	    $("a").addClass("btn btn-default btn-xs");
	});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ListHero</title>
</head>
<body>
	<%@include file="header.jsp"%>  
	<table style="width:500px; margin:44px auto" 
		   class="table table-striped table-bordered table-hover  
		   		  table-condensed" align='center' 
		   border='1' cellspacing='0'>
	    <tr>
	        <td>id</td>
	        <td>name</td>
	        <td>hp</td>
	        <td>damage</td>
	        <td>edit</td>
	        <td>delete</td>
	    </tr>
		<c:forEach items="${heros }" var="hero" varStatus="st">
			<tr>
				<td>${hero.id}</td>
				<td>${hero.name}</td>
				<td>${hero.hp}</td>
				<td>${hero.damage}</td>
				<td><a href="">edit</a></td>
				<td><a href="">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<nav>
		<ul class="pager">
			<li><a href="/j2eeWeb/listHero?start=0">首  页</a></li>
			<li><a href="/j2eeWeb/listHero?start=${pre}">上一页</a></li>
			<li><a href="/j2eeWeb/listHero?start=${next}">下一页</a></li>
			<li><a href="/j2eeWeb/listHero?start=${last}">末 页</a></li>
		</ul>
	</nav>
	<%@include file="footer.jsp"%>  
</body>
</html>
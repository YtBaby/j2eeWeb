<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix='fmt' %>  
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>    
<%@include file="footer.jsp" %>
<%
    List<String> heros = new ArrayList<String>();
    heros.add("塔姆");
    heros.add("艾克");
    heros.add("巴德");
    heros.add("雷克赛");
    heros.add("卡莉丝塔");
    request.setAttribute("heros",heros);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<base href="<%=basePath%>"></base>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<c:set var="name" value="${'green'}" scope="request"/>
	通过标签获取name:<c:out value="${name}" />
	通过 EL 获取name: ${name}
	<c:remove var="name" scope="request"/><br/>
	通过标签获取name: <c:out value="${name}" /> <br>
	
	<c:set var="hp" value="${10}" scope="request" />
	<c:if test="${hp<5}">
		<p>这个英雄要挂了</p>
	</c:if>
	<c:if test="${!(hp<5)}">
	    <p>这个觉得自己还可以再抢救抢救</p>
	</c:if>
	
	<table width="200px" align="center" border="1" cellspacing="0">
	<tr>
		<td>编号</td>
		<td>英雄</td>
	</tr>
	<c:forEach items="${heros}" var = "hero" varStatus="st">
		<tr>
			<td><c:out value="${st.count}"/></td>
			<td><c:out value="${hero}" /></td>
		</tr>
	</c:forEach>
	</table>

	<c:set var="money" value="888.8" />
	<c:set var="pi" value="3.1415926" />
	<fmt:formatNumber type="number" value="${money }" minFractionDigits="2" /><br/>
	<fmt:formatNumber type="number" value="${pi }" maxFractionDigits="2" /><br/>

	<input type="button" value="通过ajax获取一个对象" id="sender">
	<div id="messageDiv"></div> 
	
	<script>
		$('#sender').click(function(){
			var url = "getOneHero";
			$.post(
				url,
				function(data){
					var json = JSON.parse(data);
					var name =json.hero.name; 
                    var hp = json.hero.hp;
                    $("#messageDiv").html("名称:"+name+"<br/>HP:"+hp);
			});
		});
	</script>
</body>
</html>
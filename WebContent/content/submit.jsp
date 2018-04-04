<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:include page="footer.jsp" >
	<jsp:param value="2018" name="year"/>
</jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<form method="get">
		名称：<input type="text" id="name" /><br /> 
		血量：<input type="text" id="hp" /><br />
		<input type="button" value="提交" id="sender">
	</form>
	<div id="messageDiv"></div>

	<script> 
    $('#sender').click(function(){ 
        var name=document.getElementById('name').value; 
        var hp=document.getElementById('hp').value; 
        var hero={"name":name,"hp":hp}; 
        var url="submitServlet"; 
           
        $.post(
                url,
                {"data":JSON.stringify(hero)},
                function(data) { 
                     alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");
         });  
 
    }); 
    </script>
</body>
</html>
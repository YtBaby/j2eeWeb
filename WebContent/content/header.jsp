<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>退出界面</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
	function test() {
		location.href = "/j2eeWeb/exit";
	}
</script>
</head>
<body>
	<button type="button" class="btn btn-default" onclick="test()">退出</button>
</body>
</html>
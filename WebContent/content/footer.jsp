<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style>
html, body {
    margin: 0;/*清除默认样式*/
    padding: 0;
    height: 100%;
}

.container {
    position: relative;
    margin: 0 auto;
    height: auto !important;
    height: 100%; 
    min-height: 100%;
}

.content {
    padding: 1em 1em 5em;
    font-size: 30px;
}

.footer {
    position: absolute; /*相对于父元素contanier定位*/
    width: 100%;
    bottom: 0;/*始终距离它的父元素的底部为0px.则是处于父元素的最底*/
}

.footer{
    position:relative;
    width:100%;
    background-color: #999999;
    color:#eee;
    text-align: center;
    font-size: 16px;
    height: 50px; 
}

.footer span{
    line-height: 50px;
    }
</style>
</head>
<body>
<hr>
	<div class = "container">
		<div class = "footer">
	    	<span>copyright@2018</span>
	    </div>
	</div>    
</body>
</html>
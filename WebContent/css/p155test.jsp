<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	input[type=checkbox]:checked + div{
		height: 0px;
	}
	div{
		overflow: hidden;
		width: 650px; height: 300px;
		
		-ms-transition-duration: 1s;
		-webkit-transition-duration: 1s;
		-moz-transition-duration: 1s;
		-o-transition-duration: 1s;
		transition-duration: 1s;
	}
</style>
</head>
<body>
	<input type='checkbox' />
	<div>
		<h1>Lorem ipsum</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
	</div>
	

</body>
</html>
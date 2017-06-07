<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

	
	#matrix{
		position: absolute;
		margin-top: 50px;
		padding: 15px;
		text-align: center;
		border: 2px solid #aaa; 
		-webkit-transform: rotate(45deg);
		-moz-tranform: rotate(45deg);
		-o-tranform: rotate(45deg);
	}
	#matrix2{ 
		position: absolute;
		margin-top: 50px;
		margin-left: 200px;
		padding: 15px;
		text-align: center;
		border: 2px solid #aaa;
		-webkit-transform: rotate(-45deg);
		-moz-tranform: rotate(-45deg);
		-o-tranform: rotate(-45deg);
	}
	
	
</style>
</head>
<body> 
	<h3>transform</h3>	
	<div id='matrix'>rotate(45deg)</div>
	<div id='matrix2'>rotate(-45deg)</div>

</body>
</html>
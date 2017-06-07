<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#cl-dashboard{display: none}

	#none, #left, #right{
	border: 1px solid #aaaaaa;
	padding: 15px;
	margin-bottom: 10px;
	clear: both;
	}
	div>div{
		border: 1px solid #aaaaaa;
		display: inline-block;
		width:80px;
		padding:5px;
		margin-bottom:3px;
	
	}
	#none > div{
		float:none;
	}
	#left > div{
		float:left;
	}
	#right > div{
		float:right;
	}
	
</style>
</head>
<body>

	<h3>float</h3>
	<div id='none'>
		<div id='d1'>d1</div>
		<div id='d2'>d2</div>
		<div id='d3'>d3</div>	
	</div>
	<div id='left'>
		<div id='d4'>d4</div>
		<div id='d5'>d5</div>
		<div id='d6'>d6</div>	
	</div>
	<div id='right'>
		<div id='d7'>d7</div>
		<div id='d8'>d8</div>
		<div id='d9'>d9</div>	
	</div>


</body>
</html>
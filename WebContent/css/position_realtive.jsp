<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>position_realtive</title>
<style>
	#main{
		position: relative;
		border: 2px solid #5555ff;
		width: 400px;
		height: 450px;
		border-radius: 10px 10px;
		box-shadow: 5px 5px 8px #aaaaaa;
	}
	
	#main > div{
		border: 1px solid #889988;
		width: 100px;
		height: 100px;
		padding: 20px;
		box-sizing: border-box;
		position: relative;
		
	} 
	#div2{
		
		left: 100px;
		top:-100px;
	
	}
	#div3{
		top:-100px;
	}
	#div4{
		top:-200px;
		left:100px;
	}
</style>
</head>
<body>
<h3>position_realtive</h3>
<div id='main'>
	<div id='div1'>div1</div>
	<div id='div2'>div2</div>
	<div id='div3'>div3</div>
	<div id='div4'>div4</div>
</div>

</body>
</html>
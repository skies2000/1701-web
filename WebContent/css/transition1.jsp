<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<style>
		#ani_1, #ani_2, #ani_3, #ani_4, #ani_5{
			border: 1px solid #aaa;
			width: 200px;
			height: 100px;
			margin: 5px;
			border-radius: 10px;
			-webkit-transform:rotate(0deg);
			-webkit-transition: -webkit-transform 3s;
		}
		#ani_1:hover, #ani_2:hover, #ani_3:hover, #ani_4:hover, #ani_5:hover{
			background-color: #ddd;
			
			-webkit-transform:rotate(45deg);
			-webkit-transition: -webkit-transform 2s, opacity 2s,
			background 2s, width 2s, height 2s;
		}
	</style>
	
</head>
<body>

	<div id='ani_1'>Animation 1</div>
	<div id='ani_2'>Animation 2</div>
	<div id='ani_3'>Animation 3</div>
	<div id='ani_4'>Animation 4</div>
	<div id='ani_5'>Animation 5</div>

</body>
</html>
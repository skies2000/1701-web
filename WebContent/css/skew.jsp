<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<style>
		#skew-x{
			margin-top: 20px;
			width: 300px;
			height: 25px;
			border: 2px solid #aaa;
			text-align: center;
			padding-top: 6px;
			transform:skew(10deg, 0deg);	
		}
		
		#skew-y{
			margin-top: 50px;
			width: 300px;
			height: 25px;
			border: 2px solid #aaa;
			text-align: center;
			padding-top: 6px;
			transform:skew(0deg, 10deg);
		}
		
	</style>

<body>

	<h3>skew</h3>
	<div style = 'margin-left: 100px'>
		<label>좌우 비틀기</label>
		<div id='skew-x'>transform:skew(10deg, 0deg)</div>
		
		<br/><br/>
		<label>상하 비틀기</label>
		<div id='skew-y'>transform:skew(0deg, 10deg)</div>
	</div>

</body>
</html>
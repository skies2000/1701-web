<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#original,#origin{
		width: 200px;
		text-align: center;
		padding: 20px;
	}
	#original{
		border: 2px solid #ff0000;
		background-color: rgba(255,200,200,0.5);
		position: absolute;
		top: 0px;
		left: 0px;
		-webkit-transform-origin: 100% 100%;	/*우측 하단을 기준으로 회전  */
		transform: rotate(10deg);
	}
	
	#origin{
		border: 2px solid #0000ff;
		position: absolute;
		top: 0px;
		left: 0px;
		-webkit-transform-origin: 0% 0%;	/*좌측 상단을 기준으로 회전  */
		transform: rotate(10deg);
	}
	
</style>
</head>
<body>
	<div id='original'>ORIGINAL</div>
	<div id='origin'>ORIGIN: 50% 50%</div>
</body>
</html>
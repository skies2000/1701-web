<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#main{
		position: absolute;
	}
	#expand{
		position: absolute;
		left: 240px;
		top: 30px;
		transform: scale(1.5, 1.5);
	}
	#reduce{
		position: absolute;
		left: 440px;
		top: -35px;
		transform: scale(.5, .5);
	}
	#rotate{
		position: absolute;
		left: 600px;
		top: 3px;
		transform: scale(-1, 1);
	}
	
</style>
</head>
<body>

	<h3>scale</h3>
	<div id ='main'>
		<div id='original'>
			<h4>원본</h4>
			<img src='../images/06-train-cat-shake-hands.jpg'width="200"height="200">
		</div>
		<div id='expand'>
			<h4>확대</h4>
			<img src='../images/06-train-cat-shake-hands.jpg' width="200"height="200">
		</div>
		<div id='reduce'>
			<h4>축소</h4>
			<img src='../images/06-train-cat-shake-hands.jpg' width="200"height="200">
		</div>
		<div id='rotate'>
			<h4>좌우반전</h4>
			<img src='../images/06-train-cat-shake-hands.jpg' width="200"height="200">
		</div>
	</div>

</body>
</html>
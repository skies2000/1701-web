<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <style>
canvas{
	border:1px solid #000000;
	}
</style>
 -->
<script>

window.onload=start;
function start(){
	var canvas = document.getElementById('bargraph');
	var context = canvas.getContext('2d');
	
	context.beginPath();
	context.moveTo(80,40);
	context.lineTo(80,380)
	context.strokeStyle='rgb(0,0,255)';
	context.closePath
	context.stroke();
	
	context.beginPath();
	context.moveTo(40,330); 
	context.lineTo(640,330)
	context.strokeStyle='rgb(0,0,255)';
	context.closePath
	context.stroke();
	
	context.strokeStyle='rgb(0,0,0)';
	context.lineWidth='1';

	context.fillStyle='rgb(87,123,189)';
	context.fillRect(90,180,70,150);
	context.strokeRect(90,180,70,150);
	
	context.fillStyle='rgb(223,137,31)';
	context.fillRect(170,80,70,250);
	context.strokeRect(170,80,70,250);
	
	context.fillStyle='rgb(49,48,84)';
	context.fillRect(250,120,70,210);
	context.strokeRect(250,120,70,210);
	
	context.fillStyle='rgb(213,74,42)';
	
	context.fillRect(330,260,70,70);
	context.strokeRect(330,260,70,70);
	
}
</script>
</head>
<body>


<h1 align='center'>Canvas 막대 그래프</h1>

<canvas id='bargraph' width=700 height=400 align='center'></canvas>

</body>
</html>
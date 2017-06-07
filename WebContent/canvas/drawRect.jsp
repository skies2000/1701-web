<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
canvas{
	border:5px solid #5674AB;
}

</style>
<script>
window.onload=start;//body가 모두 읽혀지면 start함수를 모두 실행해라.
	function start(){
	var canvas = document.getElementById('mycanvas1');
	var context = canvas.getContext('2d');
	
	context.strokeRect(10,10,100,100);
	context.strokeRect(150.5,10.5,200.5,100.5);
	
	context.strokeStyle = 'rgb(255,0,0)';
	context.strokeRect(10.5,150.5,100.5,150.5);
	
	//채울색상
	context.fillStyle='rgba(255,255,0,0.5)';
	context.fillRect(150,150,100,100);
	 
	context.fillStyle='rgba(0,255,255,0.5)';
	context.fillRect(200,200,100,100);
	
	//canvas2, context2
	
	var canvas2 = document.getElementById('mycanvas2');
	var context2 = canvas2.getContext('2d');
	//1) 패스시작 -> 점을 이동 -> 선을 긋고 -> 패스를 닫는다
	//2) 패스시작-> 점을 이동-> 패스를 닫는다. -> 선을 긋는다.
	
	
	
	//수평선
	context2.beginPath();
	context2.moveTo(10,40);
	context2.lineTo(110,40);
	context2.stroke();
	context2.closePath();
	
	//수직선
	context2.beginPath();
	context2.moveTo(10,40);
	context2.lineTo(10,140);
	context2.strokeStyle='rgb(255,0,0)';
	context2.stroke();
	context2.closePath();
	
	context2.beginPath();
	context2.moveTo(10,140);
	context2.lineTo(110,140);
	context2.strokeStyle='rgb(0,255,0)';
	context2.stroke();
	context2.closePath();
	
	context2.beginPath();
	context2.moveTo(110,140);
	context2.lineTo(110,40);
	context2.strokeStyle='rgb(0,0,255)';
	context2.stroke();
	context2.closePath();
	
	context2.beginPath();
	context2.moveTo(10,40);
	context2.lineTo(110,140);
	context2.strokeStyle='rgb(0,255,255)';
	context2.stroke();
	context2.closePath();
	
	context2.beginPath();
	context2.moveTo(10,140);
	context2.lineTo(110,40);
	context2.strokeStyle='rgb(255,0,255)';
	context2.stroke();
	context2.closePath();
	
	//파란색 삼각형(strock을 먼저 실행한 경우)
	context2.lineWidth='8';
	context2.strokeStyle='rgb(255,0,0)';
	context2.fillStyle='rgb(0,0,255)';
	context2.beginPath();
	context2.moveTo(300,10);
	context2.lineTo(200,140);
	context2.lineTo(400,140);
	context2.fill();
	
	context2.closePath(); //경로를 먼저 닫아야 제대로 선이 표시 된다.
	context2.stroke();
	
	context2.strokeText('aa',450,300);
	context2.fillText();
	
	
	
	}
</script>
</head>
<body>
<h3>draw rect example</h3>

<canvas id='mycanvas1' width=500 height=350></canvas>
<p/>
<canvas id='mycanvas2' width=500 height=350></canvas>

</body>
</html>
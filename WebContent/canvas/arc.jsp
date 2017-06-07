<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload=start;
function start(){
	
	ct = document.getElementById('mycanvas').getContext('2d');
	
	//stroke먼저한 후
	ct.beginPath();
	ct.arc(100,100,50,0,Math.PI*1,true);
	ct.stroke();
	ct.closePath();
	
	//closePath()를 먼저한 경우
	ct.beginPath();
	ct.arc(250,100,50,0,Math.PI*1,true);
	ct.closePath();
	ct.stroke();
	
	//시작점을 중점 하단(콘모양)
	ct.fillStyle = 'rgba(80,80,255,0.5)';
	ct.strokeStyle = 'rgba(40,40,255,1)';
	ct.beginPath();
	ct.moveTo(400, 160); 
	ct.arc(400,100,50,0,Math.PI*1,true);
	ct.closePath();
	ct.fill();	//선 내부를 채을때는 fill을 써줘야 한다. 
	ct.stroke();
	  
	//콘 모양에 그림자 추가
	ct.fillStyle = '#871E07';
	
	ct.strokeStyle = '#1F0804'; 
	
	ct.shadowColor = '#1F0804'
	ct.shadowOffsetX = '20'//그림자 거리
	ct.shadowOffsetY = '20';
	ct.shadowBlur = '20';//그림자 번짐
	
	
	
	ct.beginPath();
	ct.moveTo(550, 160); 
	ct.arc(550,100,50,0,Math.PI*1,true);
	ct.closePath();
	ct.fill();	//선 내부를 채을때는 fill을 써줘야 한다.
	ct.stroke();
	
	
}

</script>
</head>
<body>

<h3>원호(arc) example<hr/></h3>
<canvas id='mycanvas' width=650 height=400></canvas>

</body>
</html>
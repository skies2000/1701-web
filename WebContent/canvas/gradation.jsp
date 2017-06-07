<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = start;
function start(){
	
	var ct = document.getElementById('mycanvas').getContext('2d');
	var inr = ct.createLinearGradient(50, 50, 150, 50);
	inr.addColorStop(0, '#102D5B');
	inr.addColorStop(0.5, '#1CCFCF');
	inr.addColorStop(1, '#7B3EAC');
	
	ct.fillStyle = inr;
	ct.fillRect(0, 0, 200, 100);
	
	//원형 Gradient
	var radial = ct.createRadialGradient(400,100,30, 400,100,100);
	radial.addColorStop(0,'#102D5B');
	radial.addColorStop(0.5,'#1CCFCF');
	radial.addColorStop(1,'#7B3EAC');
	
	ct.fillStyle = radial;
	ct.fillRect(300, 0, 200, 200);
	
	//원형 Gradient(arc) 
	 
	var radial = ct.createRadialGradient(700,100,30, 700,100,100);
	radial.addColorStop(0,'#102D5B');
	radial.addColorStop(0.5,'#1CCFCF');
	radial.addColorStop(1,'#7B3EAC');
	
	
	ct.fillStyle = radial;
	ct.beginPath();
	ct.arc(700,100,100, 0, Math.PI*2);
	ct.fill();
	ct.closePath();
	ct.stroke();
	
}
	

</script>
</head>
<body>
<canvas id='mycanvas' width=800 height=400></canvas>
</body>
</html>
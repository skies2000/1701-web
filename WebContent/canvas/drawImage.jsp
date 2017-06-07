<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	canvas{
		border: 1px solid #000000;
		
	}
</style>
<script>

	window.onload = start; 
	function start(){
		var ct = document.getElementById('mycanvas').getContext('2d');
		var img = new Image(); 
		img.src = '../images/sky.jpg';
		
		
		img.onload=function(){
			//원본
			//ct.drawImage(img, 0, 0);	
			//축소
			//ct.drawImage(img, 0, 0,img.width, img.height,500,0,100,100);
			
			ct.drawImage(img, 0, 0,img.width, img.height, 100, 100, 500, 500);
			
			//특정 부분 확대
			//ct.drawImage(img, 35, 50,180,250,650,0,200,200);
		}
	}

</script>
</head>
<body>
<h3>이미지 축소/확대 Example</h3>
<canvas id='mycanvas' width=850 height=700></canvas>

</body>
</html>
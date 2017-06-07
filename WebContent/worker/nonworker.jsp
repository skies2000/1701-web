<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	var btnS = document.getElementById('btnStart');
	var btnR = document.getElementById('btnRun');
	
	
	btnS.onclick=function(){
		var rst = document.getElementById('result');
		var str = '';
		for(i=0;i<100;i++){
			for(j=0; j<9999999;j++){}
			str+=i+'<br/>';
		}
		
	}
	btnR.onclick = function(){
		alert('run버튼이 클릭 되었습니다.');
	}
	
}
</script>
</head>
<body>
<h3>non worker type Example<hr/></h3>
<input type='button' value='start' id='btnStart'><!--start버튼을 누르고 run버튼을 눌렀을 때 실행되지 테스트  -->
<input type='button' value='run' id='btnRun'>

<div id='result'></div>


<!--문장이 다 출력 될때까지 데드락이 걸리는지에 대한 테스트  -->
</body>
</html>
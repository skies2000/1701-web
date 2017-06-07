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
		var str = '';
		var rst = document.getElementById('result');
		
		
		
		var w = new Worker('thread.js'); //워커 생성
		w.onmessage=function(ev){//쓰레드에서 postMessage 가 실행되면 onmessage가 실행된다.  
		//ev가 thread.js에서 postMessage메소드를 통해 넘어온 값
			str = ev.data;
			rst.innerHTML = str;
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
<input type='button' value='start' id='btnStart'>
<input type='button' value='run' id='btnRun'>

<div id='result'></div>
</body>
</html>
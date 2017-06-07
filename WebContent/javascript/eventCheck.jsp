<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>event check</title>
<script>

</script>
<style>
	#btn, #btn2{
		width: 100px;
		height: 30px;
	}
	#ep{
		width: 250px;
		height: 60px;
		padding: 10px;
		box-sizing: border-box;/*padding 이 되면 box-sizing은 자동으로 따라 온다고 보며 된다.*/
		
	} 
	#ep:hover{
		background-color: #aaa;
		cursor: pointer;
	}
</style>
<script>
	function start(){
		//input, p태그에 click 이벤트 추가 viewEvent
	var btn = document.getElementById('btn');
	var btn2 = document.getElementById('btn2');
	var p = document.getElementById('ep');
	btn.onclick = viewEvent;
	btn2.onclick = viewEvent;
	
	p.onclick = viewEvent;
		
	}
	function viewEvent(ev){
		var rs = document.getElementById('result');
		var str='';
		alert(ev.srcElement.name);
		 
		for(s in ev){
		str += '<li>' + s + '------' + ev[s];	//모든 이벤트를 호출
		} 
		
		str += '<li>type------'+ev.srcElement.type;
		str += '<li>name ------'+ev.srcElement.name;
		
		rs.innerHTML = str;
		if(ev.srcElement.name == 'red'){
			ep.style.backgroundColor = 'rgba(255,0,0,0.5)';
		}else if(ev.srcElement.name == 'blue'){
			ep.style.backgroundColor = 'rgba(0,0,255,0.5)';
		}
	}
</script>
</head>
<body>
<input type='button' id = 'btn' name = 'jjh' value='이벤트 체크'>
<input type='button' id = 'btn2' name = 'blue' value='이벤트 체크'>

<p id = 'ep'>이곳을 클릭하세요</p>
<div id = 'result'></div>
<script>start();</script>
</body>
</html>

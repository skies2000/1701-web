<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

	arr = new Array();	/*전역형으로 변수를 만들때에는 var가 없다.  */
	i = 0;
function start(){ 
		
	
	var outVal = document.getElementById('outVal');
	outVal.onclick = function(){
		if(i==0){
			alert('저장된 내용이 없습니다.');			
			return;
		}
		var result = document.getElementById('result');
		result.innerHTML = arr[i-1];
		
	}
	
	var save = document.getElementById('save');
	save.onclick = function(){ 
		var ff = document.frm;
		var inVal =frm.inVal; 
		if(inVal.value==''){
			alert('이름을 입력해 주세요');
			return;
		}
		arr[i] = inVal.value;
		inVal.value='';
		i++;
	}
	
	var allOut = document.getElementById('allOut');
	allOut.onclick = function(){
		var result = document.getElementById('result');
		var str='<ol>';
		
		var copy = arr;
		copy.sort();
		
		for(var s in copy){
			str+= '<li>'+copy[s]+'</li>';
		}
		
		str+='</ol>';
		result.innerHTML = str;
		
	}
	
}
	
</script>
 
<style>
	#cl-dashboard{display: none;}
	#result{
		width: 308px;
		height: 150px;
		border: 1px solid #aaa;
		overflow: auto;
	}
	form>div>input{ 
		display: inline-block;
		width: 150px; 
		margin-right: 10px; 
		margin-bottom: 5px;
		box-sizing: border-box;	/*패딩이 늘어나도 기존 크기가 늘어나지가 않는  */
		
	}
</style>

</head>
<body>

	<h3>자료를 입력받아 배열형태로 출력</h3>
	
		<form name='frm' method='post'>
			<div><input type='text' id='inVal'/><input type='button' id='outVal' value='출력'/></div>
			<div><input type='button' id='save' value='저장'/><input type='button' id='allOut' value='모두출력'/></div>
		</form>
		<div id='result'></div>
<script>start();</script>
</body>
</html>
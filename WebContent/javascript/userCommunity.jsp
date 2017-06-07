<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 대화 상자</title>
<style>
	#result{
		border: 1px solid;
		padding: 5px;
		width: 400px; height:300px;
	}
</style>
<script>
	function func1(){
		var r = document.getElementById('result');
		r.innerHTML="<font color='red'>Alert 버튼 클릭!!!</font>";
		alert('확인하세요...');
	}
	function func2(){
		var r = document.getElementById('result');
		var su = prompt('숫자입력', 2);
		var str = '';
		//구구단
		var red = '#f00';
		var blue = '#00f';
		for(var i=0; i<10; i++){
			var aa = su*i;
			var color = (i%2==0)? red : blue;
			str += '<font color='+color+'>';
			str += su + '*' + i + '=' + aa + '<br>';
			str += '</font>';
		}
		r.innerHTML = str;
	}
	function func3(){
		var r = document.getElementById('result');
		var ans = confirm('승인하시겠습니까?');
		if(ans) r.innerHTML = '승인하셨군요..';
		else	r.innerHTML = '다음엔 꼭~~~~';
	}
	
</script>
</head>
<body>
<input type='button' value='ALERT' onclick='func1()'>
<input type='button' value='PROMPT' onclick='func2()'>
<input type='button' value='CONFIRM' onclick='func3()'>
<div id = 'result'></div>

</body>
</html>

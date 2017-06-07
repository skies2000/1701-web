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
		var btn = document.getElementById('btnRun');
		btnRun.onclick=function(){	//버튼이 클릭되면
			var ff = document.frm;
			var a = Number(ff.a.value);
			var b = Number(ff.b.value);	//자바에서 Integer.parseInt와 같은 기능을 한다.
			var c=0;
			if(a>b){
				c=a-b;
			}
			else{
				c = a+b;
			}
			ff.result.value = 'if문 처리 결과\n';
			ff.result.value += 'c='+c; 
		}
	}
</script>
</head>
<body>
<form name='frm' method='post'>
	<label>첫번째 수</label>
	<input type='text' name='a'/><br/>
	<label>두번째 수</label>
	<input type='text' name='b'/><br/>
	<input type='button' id='btnRun' value='실행'/>
	<p/>
	<strong>결과</strong><br/><!--strong은 볼드체와 같다.  -->
	<textarea rows="10" cols="50" name='result'></textarea>
</form>

</body>
</html>
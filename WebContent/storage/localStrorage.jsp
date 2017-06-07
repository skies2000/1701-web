<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>localStoragehere</title>
  
<script> 
	function Data(p,m){ //하나의 클래스 오브젝트로 만들어야 한다.
		this.mid = m;  //변수가 자동으로 만들어진다.
		this.pwd = p;
		
		
	}
	
	
	window.onload = start; 
	function start(){
		var btnS = document.getElementById('btnStore');
		var btnL = document.getElementById('btnLoad');
		
		btnS.onclick = function(){ //버튼이 클릭 되었을때 실행되는 어나니머스형 함수
			/* alert('OK1');	//다이얼로그 창 */
			var ff = document.frm;
			var m = ff.mid.value;
			var p = ff.pwd.value;
			
			localStorage.setItem('a', m);	//저장 , 첫번째 변수명은 아무거나 해도 상관이 없고 읽어 들일때 매치만 시키면 된다.
			localStorage.setItem('pwd', p);
			alert('저장');

		} 
		btnL.onclick = function(){
			
			var ff = document.frm;
			ff.mid.value = localStorage.getItem('a'); //불러오기
			ff.pwd.value = localStorage.getItem('pwd');
		} 
	}

</script>

</head>
<body>

<form name='frm'>

	<h3>localStorage Example</h3>
	<label>아이디<input type='text' name='mid'></label><br/>
	<label>암호 <input type="password" name='pwd'></label><p/>
	
	<input type='button' id='btnStore' value='저장'>
	<input type='button' id='btnLoad' value='읽기'>
</form>
</body>
</html>
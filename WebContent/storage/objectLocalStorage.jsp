<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Object Local Storage</title>


<script>
	function Data(p,m){ //하나의 클래스 오브젝트로 만들어야 한다.
		this.mid = m;  //변수가 자동으로 만들어진다.
		this.pwd = p;
		
		
	}


	window.onload=start;
	function start(){
		var btnS = document.getElementById('btnSave');
		var btnL = document.getElementById('btnLoad');
		
		btnS.onclick = function(){
		var ff = document.frm;
		var m = ff.mid.value;
		var p = ff.pwd.value;
		var d = new Data(m,p);
		
		//Object를 직렬화
		alert(d);
		var v = JSON.stringify(d);	
		
		//localStorage에 저장
		localStorage.setItem('data', v);	//data라는 이름은 본인이 지정, getItem에서 매치만 하면 된다.
		alert(v); //직렬화된 데이터 확인
			
		}   
		 
		 
		btnL.onclick = function(){
			var v = localStorage.getItem('data');
			//직렬화되서 저장된 v 값을 다시 Object로 변환
			
			var obj = JSON.parse(v);
			alert(obj);
			var ff = document.frm;
			ff.mid.value=obj.mid;
			ff.pwd.value=obj.pwd;
			
		}
	}

</script>

</head>
<body>
<h3>Object Local Storage 저장 Example<hr/></h3>
	<form name='frm'>
	<label>아이디<input type='text' name='mid'></label><br/>
	<label>암 호<input type="password" name='pwd'></label><p/>
	
	<input type='button' id='btnSave' value='저장'>
	<input type='button' id='btnLoad' value='읽기'>
	</form>
</body>
</html>

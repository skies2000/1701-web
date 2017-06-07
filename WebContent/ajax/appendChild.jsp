<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	
	function start(){
		var cnt=1;
		document.getElementById('btnAppend').onclick=function(){
			var answer_zone = document.getElementById('answer_zone');
			var label = document.createElement('label');
			var br = document.createElement('br');
			label.innerHTML = cnt + '번째 보기';
			
			var input = document.createElement('input');
			input.setAttribute('type', 'text');
			input.setAttribute('size', '50');
			input .setAttribute('name','answer');
			
			answer_zone.appendChild(input);
			answer_zone.appendChild(label);
			answer_zone.appendChild(br);
			cnt++;
		}
	}
	
</script>
</head>
<body>
<h2>appendChild Example</h2>
<form name=frm id=frm method=post
	 action=appendChild_result.jsp>
	 <label>문제</label>
	 <input type=text size=50 name=q><br/>
	 <div id='answer_zone'>
	 	
	 </div>
	 <label>정답유형</label>
	 <label><input type=radio name=answer_type value=one>한개</label>
	 <label><input type=radio name=answer_type value=many>여러개</label>
	 <br/>
	 <input type=button id=btnAppend value=보기추가>
	 <p/>
	 <input type=submit value=제출>
	<script>start();</script>
</form>
</body>
</html>
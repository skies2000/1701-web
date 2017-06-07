<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#main label{
		display: inline-block;
		width: 70px;
		text-align: right;
	}
	h3{
		border: 1px solid #0f0;
		width: 600px;
	}
</style>
<script>
	function start(){
		var ff = document.frm;
		ff.zipSh.onclick = function(){ 
			window.open('zip_find.jsp','zip_find','width=450px, height=350px');
		} 
	}
</script>
</head>
<body>
	<h3>우편 번호를 배열에서 검색하여 그 값을 메인창에 적용하시오.</h3>
	<form name='frm' method=post>
	<div id = main>
		<label>우편번호</label>
		<input type=text name = leftZip> - <input type=text name = rightZip>
		<input type=button name = zipSh value = '우편번호 검색'>
		</p>
		<label>주소</label>
		<input type=text name = address><br>
		<label>상세주소</label>
		<input type=text name = detailAdd>
		
	</div>
	</form>
	
	
<script>start();</script>
</body>
</html>
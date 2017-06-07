<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	$('#btnSend').click(function(){
		var param = $('form').serialize();
		var url = 'foreach_result.jsp?'+param;
		$('#result').load(url);
	});
});
</script>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<h2>mybatis의 동작 sql 문장 (foreach)</h2>
<form name='frm' method='post' action='ifresult.jsp'>
	<label>검색할 원은?</label>
	<label><input type='checkbox' name='month' value='1'>1</label>
	<label><input type='checkbox' name='month' value='2'>2</label>
	<label><input type='checkbox' name='month' value='3'>3</label>
	<label><input type='checkbox' name='month' value='4'>4</label>
	<label><input type='checkbox' name='month' value='5'>5</label>
	<label><input type='checkbox' name='month' value='6'>6</label>
	<label><input type='checkbox' name='month' value='7'>7</label>
	<label><input type='checkbox' name='month' value='8'>8</label>
	
	
	<p/>
	<label>작성자?</label>
	<label><input type='checkbox'name='worker' value='홍길동'>홍길동</label>
	<label><input type='checkbox'name='worker' value='kim'>kim</label>
	<label><input type='checkbox'name='worker' value='lee'>lee</label>
	<label><input type='checkbox'name='worker' value='park'>park</label>
	
	<p/>
	<input type='reset' value='선택취소'>
	<input type='button' id='btnSend' value='전송'>
	<div id='result'></div>
</form>

<hr/>

<%
if(request.getMethod().equals("GET")) return;
		
%>
<h2>result</h2>


</body>
</html>
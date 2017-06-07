<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	$('#key_text').keyup(function(ev){
		var str = '<li>code : ' + ev.keyCode;
		str += '<li>type : ' + ev.type;
		
		$('#result').html(str);
	});
});
</script>

</head>
<body>
<input type='text' id='key_text' size='30' autocomplete="off" placeholder="키를 누르세요"><br/>
<input type='password' id='pwd' size='30' autocomplete="off" placeholder="키를 누르세요"><br/>
<div id='result'></div>

</body>
</html>
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
	$('#btnLoad').click(function(){
		$('#result').load('testScript.jsp');
	});
	$('#btnLoadScript').click(function(){
		
	});
 
});
</script>
</head>
<body>
<h2>getScript</h2>
<label>스크립트 실행 안됨</label><input type='button' value='load' id='btnLoad'>
<label>스크립트 실행 됨</label><input type='button' value='loadScript' id='btnLoadScript'>
<div id='result'></div>

</body>
</html>